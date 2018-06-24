class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @product_ratings = @product.product_ratings.all.order(id: :desc)
    @new_rating = ProductRating.new
  end

end
