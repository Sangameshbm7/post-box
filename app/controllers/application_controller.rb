class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
	protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  protected
  
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])
  end
end
