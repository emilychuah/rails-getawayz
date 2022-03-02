# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Creating users...'

User.create!(name: "Marc", email: "marc@live.com", password: "password")
User.create!(name: "Chris", email: "chris@hotmail.com", password: "password")
User.create!(name: "Emily", email: "emily@live.com", password: "password")
User.create!(name: "Sam", email: "sam@hotmail.com", password: "password")
User.create!(name: "Theresa", email: "theresa@hotmail.com", password: "password")

puts 'Creating listings...'

Listing.create!(title: "1-bedroom CBD Modern Designer Suite in Melbourne", address: "Melbourne, Victoria, Australia", description: "Modern and well-designed 1-bedroom apartment, centrally located in Melbourne CBD.", price_per_night: 105, listing_capacity: 2, is_active: true, user_id: 1)
Listing.create!(title: "Breathtaking Glasshouse Villa in Merricks North", address: "Merricks North, Victoria, Australia", description: "Glasshouse Villa is a breath taking property with unique architectural features and is nestled in a beautiful vineyard in the heart of the Mornington Peninsula at Merricks North in Victoria, Australia.", price_per_night: 1200, listing_capacity: 8, is_active: true, user_id: 1)
Listing.create!(title: "Macedon Ranges - Fellcroft Farmstay - Kingfisher", address: "Cobaw, Victoria, Australia", description: "Escape to the country in these unique, purpose built and exclusive bed and breakfasts that are suited for couples and friends who want to enjoy the serenity of country life.", price_per_night: 200, listing_capacity: 2, is_active: true, user_id: 1)
Listing.create!(title: "The Wensley - Rustic Luxury in Wensleydale Vic.", address: "Wensleydale, Victoria, Australia", description: "The Wensley is a haven of peace and serenity in a secluded but central pocket of the Surf Coast Hinterland called Wensleydale - offering you a chance to chill out and stay put or explore The Great Ocean Road and surrounding countryside with complete privacy.", price_per_night: 985, listing_capacity: 10, is_active: true, user_id: 1)
Listing.create!(title: "Cottage in the olives", address: "Merricks North, Victoria, Australia", description: "Cute little cottage on the Mornington Peninsula" , price_per_night: 100, listing_capacity: 4, is_active: true, user_id: 1)
Listing.create!(title: "Red Hill barn in idyllic rural setting", address: "Red Hill, Victoria, Australia", description: "This charming barn style house sits between vines and olive groves with stunning views of the nearby hills and dam.", price_per_night: 180, listing_capacity: 6, is_active: true, user_id: 1)

puts 'Creating bookings...'

Booking.create!(number_of_people: 4, is_active: true, total_price: 2400, check_in_date_utc: "2022-03-21", check_out_date_utc: "2022-03-23", user_id: 3, listing_id: 2)
Booking.create!(number_of_people: 2, is_active: true, total_price: 400, check_in_date_utc: "2022-03-28", check_out_date_utc: "2022-03-30", user_id: 4, listing_id: 3)

puts 'Finished!'
