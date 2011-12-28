class ApplicationController < ActionController::Base
  protect_from_forgery
  
  #require login filter
  def require_login
    if logged_in?
      @current_user = get_logged_in_user
    else
      redirect_to admin_login_path
    end
  end
  
  #Checks if a user is logged in
  def logged_in?

    if session[:current_user_id]
      return true
    end
    
    #Default return false
    false
    
  end
  
  #Gets the logged in user
  def get_logged_in_user
    if logged_in?
      user = User.find(session[:current_user_id])
      if user
        return user
      else
        return nil
      end
    end
    
    #default return nil
    nil
  end
  
end
