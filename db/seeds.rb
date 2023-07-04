# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying old data"
User.destroy_all
Property.destroy_all
Booking.destroy_all


puts "Seeding Users..."
5.times do
  User.create!(
    email: Faker::Internet.email,
    password_digest: Faker::Internet.password,
    is_admin: Faker::Boolean.boolean
  )
end

puts "Seeding properties..."
10.times do
  Property.create!(
    name: Faker::Address.community,
    location: Faker::Address.city,
    description: Faker::Lorem.sentence
  )
end

puts "Seeding bookings..."
20.times do
  Booking.create!(
    price: Faker::Commerce.price(range: 100..1000),
    user_id: User.pluck(:id).sample,
    property_id: Property.pluck(:id).sample
  )
end

puts "Done seeding!"