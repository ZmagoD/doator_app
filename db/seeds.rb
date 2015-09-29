
15.times { Organisation.create( 
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  zip: Faker::Address.zip,
  city: Faker::Address.city,
  phone: Faker::PhoneNumber.phone_number,
  website: Faker::Internet.domain_name,
  description: Faker::Lorem.paragraph
  ) }