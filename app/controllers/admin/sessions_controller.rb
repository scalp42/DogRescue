class Admin::SessionsController < ApplicationController
  
  layout "admin"
  
  # Show the login screen
  def new

  end
  
  # POST method - do the login
  def create
    
    # Try logging in
    begin
      user = User.authenticate(params[:email], params[:password])
      session[:current_user_id] = user.id
      flash[:success] = "Welcome back #{user.name}"
      redirect_to admin_users_index_path
      
    #if the user doesn't exist
    rescue NoSuchUserError
      flash.now[:error] = "No user with email #{params[:email]}"
      @email = params[:email]
      render :action => "new"
      
    #if the wrong password is entered
    rescue WrongPasswordError
      @email = params[:email]
      flash.now[:error] = "Wrong password"
      render :action => "new"
    end
    
  end
  
  #Destroy the session. i.e. LOG OUT
  def destroy
    session[:current_user_id] = nil
    flash[:success] = "Logged out"
    redirect_to admin_login_path
  end

end
