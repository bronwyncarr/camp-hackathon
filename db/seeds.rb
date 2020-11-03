# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  street_number = rand(1..500)
  street_name = Faker::Address.street_name
  postcode = Faker::Address.postcode
  state = Faker::Address.state
  Address.create street_number: street_number, street_name: street_name, postcode: postcode, state: state
end

count = 0
10.times do
  name = Faker::Lorem.word
  description = Faker::Company.bs
  max_campers = rand(1..16)
  has_power = Faker::Boolean.boolean 
  has_water = Faker::Boolean.boolean
  has_toilet = Faker::Boolean.boolean
  has_shower = Faker::Boolean.boolean
  address_id = count += 1
  user_id = 1
  Spot.create name: name, description: description, max_campers: max_campers, has_power: has_power, has_water: has_water, has_toilet: has_toilet, has_shower:has_shower, address_id: address_id, user_id: user_id
end
