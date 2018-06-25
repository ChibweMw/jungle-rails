class User < ActiveRecord::Base

  has_many :product_ratings
  has_secure_password

  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end