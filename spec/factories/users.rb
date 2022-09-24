FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    likes { rand(9) + 1 }
  end
end
