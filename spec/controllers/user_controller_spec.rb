require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "allows users to change their name" do
    user = FactoryGirl.create(:user)
    p user
  end
end
