class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_sign_up_params, only: [:create]
  
  protected
  
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
