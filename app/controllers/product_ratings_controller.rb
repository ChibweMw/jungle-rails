class ProductRatingsController < ApplicationController
  before_action :authorize


  def create
    @product_rating = ProductRating.new params.require(:product_rating).permit(:rating, :description)
    @product_rating.product_id = params[:product_id].to_i
    @product_rating.user = current_user


    puts "============================"
    puts @product_rating.inspect
    puts "============================"

    if @product_rating.save!
      redirect_to :back
    else
      redirect_to :back
    end

  end

end
