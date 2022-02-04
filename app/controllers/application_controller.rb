class ApplicationController < ActionController::Base
  before_action :configure_permitted_update_parameters, if: :devise_controller?
  before_action :configure_permitted_signup_parameters, if: :devise_controller?

  def configure_permitted_update_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def configure_permitted_signup_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
