class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:index]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    if params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:notice] = "You don't have access"
    redirect_to tasks_path
  end

end
