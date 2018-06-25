require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with all fields defined" do
      @category = Category.create name: 'Sporting Gear'
      @product = @category.products.create name: 'Wood Rings', price: 1000, quantity: 21
      expect(@product.save!).to be_truthy
    end
    it "is not valid without a name" do
      @category = Category.create name: 'Sporting Gear'
      @product = @category.products.create name: nil, price: 1000, quantity: 21
      expect(@product.errors.full_messages).to be_truthy
    end
    it "is not valid without a price" do
      @category = Category.create name: 'Sporting Gear'
      @product = @category.products.create name: 'Wood Rings', price: nil, quantity: 21
      expect(@product.errors.full_messages).to be_truthy
    end
    it "is not valid without a quantity" do
      @category = Category.create name: 'Sporting Gear'
      @product = @category.products.create name: 'Wood Rings', price: 1000, quantity: nil
      expect(@product.errors.full_messages).to be_truthy
    end
    it "is not valid without a category" do
      @category = Category.create name: 'Sporting Gear'
      @product = @category.products.create name: 'Wood Rings', price: 1000, quantity: 21, category: nil
      expect(@product.errors.full_messages).to be_truthy
    end
  end
end
