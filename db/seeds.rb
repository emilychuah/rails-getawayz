# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."

emily = User.create!(
  name: "Emily",
  email: "emily@live.com",
  password: "password"
)
emily.photos.attach(io: File.open('app/assets/images/emily.png'), filename: 'emily.png', content_type: 'image/png')

chris = User.create!(
  name: "Chris",
  email: "chris@live.com",
  password: "password"
)
chris.photos.attach(io: File.open('app/assets/images/chris.png'), filename: 'chris.png', content_type: 'image/png')

sam = User.create!(
  name: "Sam",
  email: "sam@live.com",
  password: "password"
)
sam.photos.attach(io: File.open('app/assets/images/sam.png'), filename: 'sam.png', content_type: 'image/png')

theresa = User.create!(
  name: "Theresa",
  email: "theresa@live.com",
  password: "password"
)
theresa.photos.attach(io: File.open('app/assets/images/theresa.png'), filename: 'theresa.png', content_type: 'image/png')

marc = User.create!(
  name: "Marc",
  email: "marc@live.com",
  password: "password"
)
marc.photos.attach(io: File.open('app/assets/images/marc.jpg'), filename: 'marc.jpg', content_type: 'image/jpg')

puts "Creating listings..."

hideaway = Listing.create!(
  title: "Thoroughly Relax at Saltbush; a Unique Hideaway",
  address: "Torquay, Victoria, Australia",
  description: "Enjoy absolute privacy in our guest suite - your own wing of our modern home with a soothing garden view and private entrance. Feel a sense of serenity as daylight streams in through glass doors and a long transom window in a room filled with plants and Asian accent pieces.",
  price_per_night: 160,
  listing_capacity: 2,
  is_active: true,
  user_id: 1
)
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/79b17361-30b5-46fe-85ab-147315d8e878.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/d93b4c48-8414-4214-af22-14f113a3d1d9.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/fc64cd7d-e141-4e27-8ec8-5dc83b78473d.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/272d5aa9-17a8-40f0-a02c-5fc46a0b2e48.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/aae83b7a-27c9-4cea-a0c1-fd0176303121.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/abf0fe71-d134-4ecb-ba00-a5b0904fc3b7.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')
hideaway.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/179657c2-e17e-4d0d-abde-f42064c6f4b5.jpg?im_w=1440'), filename: 'hideaway.png', content_type: 'image/png')

glass_cabin = Listing.create!(
  title: "The WonderINN Mirrored Glass Cabin",
  address: "Rælingen, Viken, Norway",
  description: "Immerse yourself in the wilderness, still within reach of civilization! WonderINN is literally a hidden gem; the unique design of the mirrored glass blends into the landscape so you can retreat to comfort and luxury as you watch the world pass by.",
  price_per_night: 555,
  listing_capacity: 4,
  is_active: true,
  user_id: 1
)
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/9e8d63dc-a594-4364-9be4-daf83610fd8c?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/622a7f24-1a55-4468-82b5-fb3abc83020f?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/56da593b-40a2-4e71-8a76-7bf23071f5a9?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/e95121d1-3c82-43e6-b542-85a48a22dbcb?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/52ef5dd7-a8fa-43ba-8b0d-2d66d1443891?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/944d56fa-e9a6-48fb-a9c5-e4e3778042d7?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')
glass_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/monet/Select-34444025/original/1a3200a4-ad68-4d65-8a82-f738d548d043?im_w=1440'), filename: 'glass_cabin.png', content_type: 'image/png')

hideout_cabin = Listing.create!(
  title: "Hideout Cabin - Luxury Tiny Home",
  address: "Moss Vale, New South Wales, Australia",
  description: "The first of its kind in the Southern Highlands. Hideout is an exclusive luxury tiny home in an idyllic farm setting. This tiny home is set on a beautiful dam of a working horse farm, situated on over 150 acres. Guests are able to interact as much or as little as they like with the surroundings.",
  price_per_night: 460,
  listing_capacity: 2,
  is_active: true,
  user_id: 3
)
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/f923b294-8b45-4a18-be06-485ee401b400.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/37185eec-a78d-452f-b374-a86f8b2ad748.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/26d8b8af-36b0-42e7-91c4-6dc8da94f71c.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/413cff96-b078-415f-adce-c3cc381e7b74.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/8cbfee34-ed00-4ee1-a33b-3025b807a293.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')
hideout_cabin.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/68349aea-33cd-4ab0-aa30-48a2395098cd.jpg?im_w=1440'), filename: 'hideout_cabin.png', content_type: 'image/png')

queenstown = Listing.create!(
  title: "Spectacular views, 2 bedrooms & big deck",
  address: "Queenstown, Otago, New Zealand",
  description: "Welcome to our beautiful home, which is perfectly located for the best views in Queenstown and only 800 metres from town, (8-10 min walk) where you will find fabulous restaurants, activities and shops.",
  price_per_night: 170,
  listing_capacity: 4,
  is_active: true,
  user_id: 2
)
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/b4e60e12-090d-4eee-bbe7-07347a2f69f1.jpeg?im_w=1200'), filename: 'queenstown.png', content_type: 'image/png')
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/64514c0d-0b91-4f6a-a2be-63356fe857c9.jpeg?im_w=1440'), filename: 'queenstown.png', content_type: 'image/png')
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/cf2e260e-44a0-4d1c-bded-23814e101048.jpeg?im_w=1440'), filename: 'queenstown.png', content_type: 'image/png')
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/5f763400-dbc2-44ad-9487-0f4546f185af.jpeg?im_w=1440'), filename: 'queenstown.png', content_type: 'image/png')
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/64e0dcd5-57b4-4ff2-ad26-1401f2adfe2f.jpeg?im_w=1440'), filename: 'queenstown.png', content_type: 'image/png')
queenstown.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/miso/Hosting-44394813/original/cf4b5727-5796-4e8c-9a14-a8c194e23467.jpeg?im_w=1440'), filename: 'queenstown.png', content_type: 'image/png')

villa = Listing.create!(
  title: "Villa Moon Shadow",
  address: "Ko Samui, Surat Thani, Thailand",
  description: "This magnificent waterfront home is located on the southeast coast of Koh Samui, just minutes from Chaweng Beach. Designed by renowned Thai architect Bodin Sritrakul, the villa was awarded the Thailand property award for \"best architectural design\" in 2013, and was named \"best honeymoon hideaway\" by the World Boutique Hotel Awards in London in 2015.",
  price_per_night: 1695,
  listing_capacity: 8,
  is_active: true,
  user_id: 5
)
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/8_25.jpg?itok=tIKlJtnd'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/36_10.jpg?itok=AbcVx8Uq'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/14_20.jpg?itok=EAM8KIpV'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/26_18.jpg?itok=G0FjKfWc'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/39_11.jpg?itok=XQtirILE'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/43.jpg?itok=0taxgS_b'), filename: 'villa.png', content_type: 'image/png')
villa.photos.attach(io: URI.open('http://mediageneral.hoxbxqj6tmpykipp98ol.maxcdn-edge.com/sites/default/files/styles/thumbnail_style_1600/public/3_35.jpg?itok=_6_A5FWE'), filename: 'villa.png', content_type: 'image/png')

cave_house = Listing.create!(
  title: "Unique Architecture Cave House",
  address: "South Aegean, Greece",
  description: "This spacious, unparalleled cave house, hanging on the cliffs of the caldera in the center of Oia, is part of a traditional complex of cave houses, owned & renovated by a family of architects.",
  price_per_night: 340,
  listing_capacity: 4,
  is_active: true,
  user_id: 4
)
cave_house.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/51f4d564-3273-4f25-843d-54e17f6a8783.jpg?im_w=1440'), filename: 'cave_house.png', content_type: 'image/png')
cave_house.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/c5fa93c1-cf1f-45d0-a28a-b1da91b58fb7.jpg?im_w=1440'), filename: 'cave_house.png', content_type: 'image/png')
cave_house.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/99e1e136-c34e-49df-a17f-08d91bb04633.jpg?im_w=1440'), filename: 'cave_house.png', content_type: 'image/png')
cave_house.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/80051053-6921-4a0f-8c46-a186e9f11d6e.jpg?im_w=1440'), filename: 'cave_house.png', content_type: 'image/png')
cave_house.photos.attach(io: URI.open('https://a0.muscache.com/im/pictures/2918519/7cf94f47_original.jpg?im_w=1440'), filename: 'cave_house.png', content_type: 'image/png')

puts "Finished!"
