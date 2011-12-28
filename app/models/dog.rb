#Dog data model
class Dog < ActiveRecord::Base
  
  #Validation
  validates_presence_of :name, :breed, :status
  
  
end
