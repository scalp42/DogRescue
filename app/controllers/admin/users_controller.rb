class Admin::UsersController < ApplicationController
  
  layout "admin"
  
   # GET /admin/users
   def index
     @users = User.all
   end

   # GET /admin/users/new
   def new
     @user = User.new
   end

   # POST /admin/users
   def create
     @user = User.new(params[:user])

     if @user.save
       flash[:success] = "User was successfully created"
       redirect_to edit_admin_user_path(@user)
     else
       render "new"
     end

   end

   # GET /admin/users/1/edit
   def edit
     @user = User.find(params[:id])
   end

   # PUT /admin/users/1
   def update
     @user = User.find(params[:id])

     if @user.update_attributes(params[:user])
       flash[:success] = "User was successfully updated"
       redirect_to edit_admin_user_path(@user)
     else
       render "edit"
     end

   end

   # DELETE /admin/users/1
   def destroy
     @user = User.find(params[:id])
     @user.destroy
     flash[:success] = "Deleted user"
     redirect_to admin_users_url
     
   end

end
