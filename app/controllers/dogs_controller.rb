#Main controller for front end viewing of all the dogs
class DogsController < ApplicationController
  
  def index
    @dogs = Dog.where("status = 'available'").paginate(:page => params[:page])
  end

  def view
    @dog = Dog.find(params[:id])
  end

end
