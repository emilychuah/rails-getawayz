# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.create!(title: "House", address: "123 Street", description: "Nice house", price_per_night: 90, listing_capacity: 3, is_active: true, user_id: 1)
Listing.create!(title: "Mini Apartment", address: "21 Curzon Street", description: "Nice Garden", price_per_night: 100, listing_capacity: 2, is_active: true, user_id: 1)
