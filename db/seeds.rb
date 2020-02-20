# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# For the purpose of creating data later - this is the format.

10.times do
  Friend.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(digits: 2),
    hair_color: Faker::Color.color_name,
    eye_color: Faker::Color.color_name,
    gender: Faker::Gender.type,
    birth: Faker::Date.birthday(min_age:18, max_age:85),
    living: Faker::Boolean.boolean,
  )
end
# Friend.create(first_name:"Steve", last_name:"Stevenson", age: 31, hair_color:"Blond", eye_color: "Blue", gender: "male", birth: 19880324, living: true)
