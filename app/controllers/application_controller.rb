class ApplicationController < ActionController::Base

  before_action :authorized
  helper_method :current_user
  helper_method :logged_in?

  def authorized
    redirect_to '/' unless logged_in?
  end

  def current_user
    User.find_by_id(session[:user_id])
  end
  

  def logged_in?
    !!current_user
  end  

end
