class User < ActiveRecord::Base
  attr_accessor :password
  
  #validation
  validates_presence_of :email
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_uniqueness_of :email
  
  #callback
  before_save :encrypt_password
  
  #Gets the full name
  def name
    first_name + " " + last_name
  end
  
  #Authenticate 
  def self.authenticate(email, password)
    
    #Get the user
    user = self.find_by_email(email)
    
    if user.nil?
      raise NoSuchUserError, "No user with email #{email}"
    end
    
    #If user checks out, return the user, else nil
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      raise WrongPasswordError, "Incorrect password"
    end
  end
  
  #Encrypt the password
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end  
  
end

#Exceptions for authentication
class NoSuchUserError < RuntimeError
end

class WrongPasswordError < RuntimeError
end

