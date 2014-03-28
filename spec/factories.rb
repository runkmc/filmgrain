FactoryGirl.define do

  factory :filmroll do
    name { Faker::Lorem.word }
    notes { Faker::Lorem.paragraph }
  end

end
