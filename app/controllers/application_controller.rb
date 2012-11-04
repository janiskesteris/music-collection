class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to (user_signed_in? ? root_path : new_user_session_path), :alert => exception.message, status: 403
  end
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  private

  def record_not_found
    redirect_to root_path, :status => 404
  end
end
