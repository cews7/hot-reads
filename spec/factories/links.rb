FactoryGirl.define do
  factory :link do
    url { Faker::Internet.url }
    read_total { 1 + rand(15) }
  end
end
