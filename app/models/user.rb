class User < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true
  belongs_to :project
end
