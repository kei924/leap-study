class ApplicationController < ActionController::Base
  def after_sign_out_path_for(resource)
     new_student_session_path
   end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # skip_before_filter :verify_authenticity_token ,:only=>[:index]
  # protect_from_forgery with: :exception
end
