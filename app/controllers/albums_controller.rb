class AlbumsController < ApplicationController
	before_action :authenticate_user!
	def index
	  	@albums = Album.where(:user_id => current_user.id).all.order(created_at: :desc)
	end

	def new
	 	@album = Album.new	
    end

	def create
		Album.albumcreate(album_params)
		redirect_to albums_path 
	end

	private
  	def album_params
    params.require(:album).permit(:user_id, :album_photo , :trash )
 	end
end
