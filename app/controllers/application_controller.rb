class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def require_user
    redirect_to login_path if !logged_in?
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end
end
