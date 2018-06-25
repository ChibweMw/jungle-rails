class User < ActiveRecord::Base

  has_many :product_ratings
  has_secure_password

  validates :first_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false}, format: { with: /\W/ }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email_address, password)
    email = email_address
    user = User.where('email = ?', email.downcase)
    if user && user.authenticate(password)
      @user = user
    end
  end
end