require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it "is valid with all fields defined" do
      @user = User.create(
        first_name: 'Jack',
        last_name: 'Ryan',
        email: 'jack@ryan.com',
        password: '123456',
        password_confirmation: '123456'

      )
      expect(@user.save!).to be_truthy
    end
    it "is not valid without a password" do
      @user = User.create(
        first_name: 'Jack',
        last_name: 'Ryan',
        email: 'jack@ryan.com',
        password: nil
      )
      expect(@user).to_not be_valid
    end
    it "is valid with matching password and password confirmation" do
      @user = User.create(
        first_name: 'Jack',
        last_name: 'Ryan',
        email: 'jack@ryan.com',
        password: '123456',
        password_confirmation: '123456'
      )
      expect(@user.password).to eql(@user.password_confirmation)

    end
    it "is not valid with mis-matching password and password confirmation" do
      @user = User.create(
        first_name: 'Jack',
        last_name: 'Ryan',
        email: 'jack@ryan.com',
        password: '123456',
        password_confirmation: '213'
      )
      expect(@user.password).to_not eql(@user.password_confirmation)

    end
    it "is not valid with pre-existing email" do
      @existing_user = User.create(
        first_name: 'John',
        last_name: 'Ryan',
        email: 'john@ryan.com',
        password: '123456',
        password_confirmation: '123456'
      )

      @user = User.create(
        first_name: 'Johnny',
        last_name: 'Ryan',
        email: 'JOHN@ryan.com',
        password: '123456',
        password_confirmation: '123456'
      )
      expect(@user).to_not be_valid

    end
    it "is not valid when determined minimum passord length is not met" do
      @user = User.create(
        first_name: 'Johnny',
        last_name: 'Ryan',
        email: 'JOHN@ryan.com',
        password: '12',
        password_confirmation: '12'
      )
      expect(@user).to_not be_valid
    end
  end
end
