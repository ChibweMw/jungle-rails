class User < ActiveRecord::Base

  has_many :product_ratings
  has_secure_password

end