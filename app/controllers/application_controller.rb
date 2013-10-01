class ApplicationController < ActionController::Base

  protect_from_forgery

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_session_path
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user]) if session[:user]
  end

  helper_method :current_user


end
