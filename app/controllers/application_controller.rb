class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    render_401
  end
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  private

  def record_not_found
    render :file => "#{Rails.root}/public/404.html", :status => 404
  end

  def render_401
    render :file => "#{Rails.root}/public/401.html", :status => 401
  end
end
