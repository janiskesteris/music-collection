class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :albums, dependent: :destroy
end
