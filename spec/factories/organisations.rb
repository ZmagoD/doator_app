require 'faker'

FactoryGirl.define do
  
  factory :organisation do 
    name { Faker::Company.name }
    email { Faker::Internet.email } 
    address { Faker::Address.street_address }
    city { Faker::Address.city }
    zip { Faker::Address.zip }
    phone { Faker::PhoneNumber.phone_number }
    website { Faker::Internet.domain_name }
    description { Faker::Lorem.paragraph }
    password "asdf1234"
    password_confirmation "asdf1234"
  end
  
end