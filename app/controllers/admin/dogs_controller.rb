class Admin::DogsController < ApplicationController
  
  before_filter :require_login
  layout "admin"
  
  # GET /admin/dogs
  def index
    @dogs = Dog.paginate(:page => params[:page])
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end

  # GET /dogs/1/edit
  def edit
    @dog = Dog.find(params[:id])
  end

  # POST /dogs
  # POST /dogs.json
  def create
    
    #handle upload
    handle_upload
    
    @dog = Dog.new(params[:dog])
    
    if @dog.save
      flash[:success] = "Dog was successfully created"
      redirect_to edit_admin_dog_path(@dog)
    else
      render action: "new" 
    end

  end

  # PUT /dogs/1
  # PUT /dogs/1.json
  def update
    
    #handle the upload
    handle_upload
    
    @dog = Dog.find(params[:id])

    if @dog.update_attributes(params[:dog])
      flash[:success] = "Dog was successfully updated"
      redirect_to edit_admin_dog_path(@dog)
    else
      render action: "edit"
    end

  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    flash[:success] = "Deleted dog"

    redirect_to admin_dogs_path

  end 
  
  
  protected 
  
  #Handle file upload
  def handle_upload
    if params[:dog][:image]  
      uploaded_io = params[:dog][:image]
      File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      params[:dog][:image] = uploaded_io.original_filename
    end
  end 
  
end
