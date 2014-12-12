class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
  	protect_from_forgery with: :exception
 	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(  :email, :name , :password, :password_confirmation, :remember_me , :profile_photo , :role_id , :trash) }
   	  # devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(  :email, :name, :password, :password_confirmation, :remember_me , :profile_photo) }
    	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(  :email, :name  , :password, :password_confirmation, :current_password , :profile_photo , :role_id , :trash) }
	end 
end
