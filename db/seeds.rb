# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  person = Person.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.between(1, 80),
    hair_color: Faker::Color.color_name,
    eye_color: ['dark brown', 'blue', 'hazel', 'light brown', 'green'].sample,
    gender: Faker::Dog.gender,
    alive: Faker::Boolean.boolean
  )

  contact = person.create_contact(
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.full_address
  )
end

puts 'seeded'