class Product < ActiveRecord::Base

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category
  has_many :product_ratings

  validates_presence_of :name
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  accepts_nested_attributes_for :product_ratings

end
