class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  def current_team
    
  end
  
  def current_provider
    if current_user
      @current_provider = current_user.provider
    else
      Provider.find_by_subdomain! request.subdomain
    end
  end
  helper_method :current_provider
    
end
