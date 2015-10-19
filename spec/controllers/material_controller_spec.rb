require 'rails_helper'

RSpec.describe MaterialsController, type: :controller do

  it 'should render materials without duplicates' do
    FactoryGirl.create(:project, name: 'project 1')
    FactoryGirl.create(:project, name: 'project 2')
    FactoryGirl.create(:material, name: 'paper', project_id: 2)
    FactoryGirl.create(:material, name: 'paper', project_id: 1)
    FactoryGirl.create(:material, name: 'desk', project_id: 1)

    get :index

    expect(assigns(:materials).count).to eq 2
  end

end
