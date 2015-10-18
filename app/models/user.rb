class User < ActiveRecord::Base
  validates :name, :email, presence: true, uniqueness: true
  has_and_belongs_to_many :projects
end
