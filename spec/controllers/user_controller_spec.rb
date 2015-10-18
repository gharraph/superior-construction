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

  end
end
