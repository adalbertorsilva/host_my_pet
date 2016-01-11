class User < ActiveRecord::Base
  validates :password, confirmation: true
  validates :name, :gender, :phone, :email, :password,:password_confirmation ,presence: true
  validates :email, uniqueness: true
  has_secure_password
end
