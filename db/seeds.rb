# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Person.create(
    name: Faker::HowIMetYourMother.character,
    age: Faker::Number.between(1, 80),
    hair_color: Faker::Color.color_name,
    eye_color: ['dark brown', 'blue', 'hazel', 'light brown', 'green'].sample,
    gender: Faker::Dog.gender,
    alive: Faker::Boolean.boolean
  )
end

puts 'seeded'