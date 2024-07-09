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

flat1 = Flat.create!(name: "Home in Paris", address: "Paris", price: 100, description: "Discover my penthouse in the center of Paris", user_id: user5.id, poster_url: "https://picsum.photos/200")
flat2 = Flat.create!(name: "Home in Berlin", address: "Berlin", price: 100, description: "Discover my penthouse in the center of Berlin", user_id: user1.id, poster_url: "https://picsum.photos/200")
flat3 = Flat.create!(name: "Home in London", address: "London", price: 100, description: "Discover my penthouse in the center of London", user_id: user2.id, poster_url: "https://picsum.photos/200")
flat4 = Flat.create!(name: "Home in Krakow", address: "Krakow", price: 100, description: "Discover my penthouse in the center of Krakow", user_id: user5.id, poster_url: "https://picsum.photos/200")
flat5 = Flat.create!(name: "Home in Sicily", address: "Sicily", price: 100, description: "Discover my penthouse in the center of Sicily", user_id: user5.id, poster_url: "https://picsum.photos/200")

booking1 = Booking.create!(user_id: user1.id, flat_id: flat1.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking2 = Booking.create!(user_id: user1.id, flat_id: flat2.id, start_date: Date.new(2024, 4, 5), end_date: Date.new(2024, 5, 5))
booking3 = Booking.create!(user_id: user3.id, flat_id: flat4.id, start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 2))
booking4 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking5 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 10, 10), end_date: Date.new(2024, 11, 11))

puts "Seed successful"
