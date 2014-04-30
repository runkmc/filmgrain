FactoryGirl.define do

  factory :filmroll do
    name { Faker::Lorem.word }
    shooting_notes { Faker::Lorem.paragraph }
    development_notes { Faker::Lorem.paragraph }
  end

end
