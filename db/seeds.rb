# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create!(email: "test1@email.com", password: "test1@email.com", owner?: true)
user2 = User.create!(email: "test2@email.com", password: "test2@email.com", owner?: true)
user3 = User.create!(email: "test3@email.com", password: "test3@email.com", owner?: false)
user4 = User.create!(email: "test4@email.com", password: "test4@email.com", owner?: false)
user5 = User.create!(email: "test5@email.com", password: "test5@email.com", owner?: true)

flat1 = Flat.create!(name: "Flat in Paris", address: "Paris", price: 100, description: "Step into a beautifully furnished space adorned with tasteful decor, parquet floors, and large windows that bathe the rooms in natural light. The living area seamlessly connects to the dining space, creating an inviting atmosphere for relaxation and socializing.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG2.rSuFAJtHfm3nKXqj08Gd?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat2 = Flat.create!(name: "Studio in Berlin", address: "Berlin", price: 100, description: "Welcome to our spacious studio in the heart of Berlin! This charming abode offers a perfect blend of modern comfort and city life. As you step inside, you’ll be greeted by high ceilings, large windows, and original wooden floors that exude warmth and elegance.", user_id: user1.id, poster_url: "https://th.bing.com/th/id/OIG4.rv3vQDbd2wAkw2ZIbNCu?pid=ImgGn")
flat3 = Flat.create!(name: "Home in London", address: "London", price: 100, description: "Prepare gourmet meals in the sleek kitchen equipped with high-end appliances, marble countertops, and a Nespresso machine. Rest peacefully in the comfortable bedroom, complete with plush bedding and blackout curtains.", user_id: user2.id, poster_url: "https://th.bing.com/th/id/OIG4.IgXTG4Lj2aKDxhukfqyc?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat4 = Flat.create!(name: "Home in Krakow", address: "Krakow", price: 100, description: "Welcome to our beautiful, bright, and luxurious apartment in the heart of Kraków. This delightful flat offers a perfect blend of comfort and convenience, making it an ideal choice for both solo travelers and business professionals.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG1.EGKgub2PNIpMhArGJaTB?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat5 = Flat.create!(name: "Apartment in Sicily", address: "Sicily", price: 100, description: "The apartment is located in a completely renovated old building from 2020, ensuring a blend of historical charm and modern amenities. Enjoy abundant natural light through two large windows that open onto a balcony overlooking a private courtyard.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG4.tPvwVrEHahLe6Kjf4I0p?w=1024&h=1024&rs=1&pid=ImgDetMain")

booking1 = Booking.create!(user_id: user1.id, flat_id: flat1.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking2 = Booking.create!(user_id: user1.id, flat_id: flat2.id, start_date: Date.new(2024, 4, 5), end_date: Date.new(2024, 5, 5))
booking3 = Booking.create!(user_id: user3.id, flat_id: flat4.id, start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 2))
booking4 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking5 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 10, 10), end_date: Date.new(2024, 11, 11))

puts "Seed successful"
