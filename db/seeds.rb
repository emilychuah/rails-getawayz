# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating users...'

User.create!(name: "Chris", email: "chris@hotmail.com", password: "password")
User.create!(name: "Emily", email: "emily@live.com", password: "password")
User.create!(name: "Sam", email: "sam@hotmail.com", password: "password")
User.create!(name: "Theresa", email: "theresa@hotmail.com", password: "password")

puts 'Creating listings...'

Listing.create!(title: "1-bedroom CBD Modern Designer Suite in Melbourne", address: "Melbourne, Victoria, Australia", description: "Modern and well-designed 1-bedroom apartment, centrally located in Melbourne CBD.", price_per_night: 105, listing_capacity: 2, is_active: true, user_id: 1)
Listing.create!(title: "Macedon Ranges - Fellcroft Farmstay - Kingfisher", address: "Cobaw, Victoria, Australia", description: "Escape to the country in these unique, purpose built and exclusive bed and breakfasts that are suited for couples and friends who want to enjoy the serenity of country life.", price_per_night: 200, listing_capacity: 2, is_active: true, user_id: 1)
Listing.create!(title: "Cottage in the olives", address: "Merricks North, Victoria, Australia", description: "Cute little cottage on the Mornington Peninsula" , price_per_night: 100, listing_capacity: 4, is_active: true, user_id: 1)
Listing.create!(title: "Red Hill barn in idyllic rural setting", address: "Red Hill, Victoria, Australia", description: "This charming barn style house sits between vines and olive groves with stunning views of the nearby hills and dam.", price_per_night: 180, listing_capacity: 6, is_active: true, user_id: 1)

puts 'Creating bookings...'

Booking.create!(number_of_people: 4, is_active: true, total_price: 105, check_in_date_utc: "2022-03-20", check_out_date_utc: "2022-03-21", user_id: 2, listing_id: 2)
Booking.create!(number_of_people: 2, is_active: true, total_price: 400, check_in_date_utc: "2022-03-28", check_out_date_utc: "2022-03-30", user_id: 3, listing_id: 3)

puts 'Finished!'
