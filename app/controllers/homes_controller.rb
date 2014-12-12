require 'rss'
require 'rss/1.0'
require 'rss/2.0'
require 'open-uri'

class HomesController < ApplicationController
  before_action :authenticate_user!
	def index
  		@users = User.all_user
      @users = User.search(params[:search])
      @users = Kaminari.paginate_array(@users).page(params[:page]).per(3)
      @albums = Album.where(:user_id => current_user.id).all
	end

  def trash
      @users = User.all_trash_user
  end

  def new
      @user = User.new
  end

	def create
  		User.homecreate(user_params)
  		redirect_to homes_path 
	end

	def show
		  @user = User.homeshowdata(params[:id])
	end

  def edit
 		  @user = User.find(params[:id])
	end

	def update
      if User.update_user(params[:id],user_params)
    		redirect_to homes_path
  		else
    		render 'edit'
  		end
	end

	def destroy
      @user = User.find(params[:id])
      @message = Message.where(:receiver_id => @user.id).all
      @user.trash=true
        @message.each do |message|
        message.trash=true
        message.save
        end
      @user.save
      redirect_to homes_path
  end
  
  def restore
      @user = User.find(params[:id])
      @message = Message.where(:receiver_id => @user.id).all
      @user.trash=false
        @message.each do |message|
        message.trash=false
        message.save
        end
      @user.save
      redirect_to trash_home_path
  end

  def destroy_restore
      @user = User.find(params[:id])
      @message = Message.where(:receiver_id => @user.id).all
        @message.each do |message|
        message.destroy
        end
      @user.destroy
      redirect_to trash_home_path
  end

  def destroy_multiple 
      #User.destroy(params[:selectmultiple])
      @user = User.find(params[:selectmultiple])
      @user.each do |u|
        @message = Message.where(:receiver_id => u.id).all
        u.trash=true
        @message.each do |message|
        message.trash=true
        message.save
        end
      u.save
      end
      redirect_to homes_path
  end
  def restore_multiple 
      @user = User.find(params[:selectmultiple])
      @user.each do |u|
        @message = Message.where(:receiver_id => u.id).all
        u.trash=false
        @message.each do |message|
        message.trash=false
        message.save
        end
      u.save
      end
      redirect_to homes_path
  end

	private
  def user_params
      params.require(:user).permit(:name, :email , :password, :password_confirmation, :current_password , :profile_photo , :trash , :role_id )
 	end 
end
