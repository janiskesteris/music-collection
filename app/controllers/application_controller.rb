class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to user_signed_in? ? root_path : new_user_session_path, :alert => exception.message
  end
end
