class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable

  #add recoverable model in order to send recoverable passworf tokens when people forget pw - google mailer (ryan bates railscast)
  devise :database_authenticatable, :registerable, #:recoverable
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
