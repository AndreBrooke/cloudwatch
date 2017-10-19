class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
 
  private 

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  

  def authorize
  	if current_user.role != ("admin" || "superuser")
  		redirect_to '/'
  		flash[:notice] = "You are not authorized to perform this action"
  	else 
  		flash[:notice] = "You are authorized to perform this action"
  	end

  	
  end
 
end
