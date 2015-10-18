require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'update user' do
    before :each do
      @user = FactoryGirl.create(:user)
    end

    it "allows users to change their name" do
      put :update, :id => @user.id,
          :user => FactoryGirl.attributes_for(:user, :name => 'different name')
      @user.reload

      expect(@user.name).to  eq "different name"
    end

    it "does not allow duplicate emails" do
      another_user = FactoryGirl.build(:user, :email => "Doe@email.com")

      another_user.save

      another_user.should_not be_valid
    end

  end
end
