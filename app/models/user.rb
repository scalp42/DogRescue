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
  
  #Encrypt the password
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end  
  
end
