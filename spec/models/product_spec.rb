require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with all fields defined" do
      @category = Category.new name: 'Sporting Gear'
      @product = @category.products.new name: 'Wood Rings', price: 1000, quantity: 21
      expect(@product.save!).to be_truthy
    end

    it "is not valid without a name"
    it "is not valid without a price"
    it "is not valid without a quantity"
    it "is not valid without a category"
  end
end
