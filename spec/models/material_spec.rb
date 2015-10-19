require 'rails_helper'

RSpec.describe Material, type: :model do
  it { should belong_to :project }
end
