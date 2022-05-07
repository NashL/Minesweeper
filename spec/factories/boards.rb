FactoryBot.define do
  factory :board do
    name { "MyName" }
    email { "MyDescription" }
    width { rand(1..10) }
    height { rand(1..10) }
    mines { rand(1..10) }
  end
end
