class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_out_path_for(resource)
     root_path
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :gender, :job, :job_detail)
  end
  def welcome
    
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # skip_before_filter :verify_authenticity_token ,:only=>[:index]
  # protect_from_forgery with: :exception
end
