# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 100 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: %w[chinese italian japanese french belgian].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  restaurant.save!
end
puts 'Finished!'
