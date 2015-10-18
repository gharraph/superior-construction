FactoryGirl.define do
  factory :user do
    name "Joh Doe"
    email  "Doe@email.com"
  end

  factory :project do
    name "cool project"
    description "the coolest project ever"
  end
end