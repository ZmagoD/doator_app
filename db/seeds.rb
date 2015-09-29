Organisation.create(
  name: "admin",
  email: "admin@admin.com",
  password: "asdf1234"
  )

15.times { Organisation.create( 
  name: Faker::Company.name,
  email: Faker::Internet.email,
  password: "asdf1234",
  address: Faker::Address.street_address,
  zip: Faker::Address.zip,
  city: Faker::Address.city,
  phone: Faker::PhoneNumber.phone_number,
  website: Faker::Internet.domain_name,
  description: Faker::Lorem.paragraph
  ) }