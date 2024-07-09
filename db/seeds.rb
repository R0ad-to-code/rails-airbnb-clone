# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create!(email: "test1@email.com", password: "test1@email.com")
user2 = User.create!(email: "test2@email.com", password: "test2@email.com")
user3 = User.create!(email: "test3@email.com", password: "test3@email.com")
user4 = User.create!(email: "test4@email.com", password: "test4@email.com")
user5 = User.create!(email: "test5@email.com", password: "test5@email.com")

flat1 = Flat.create!(name: "Home in Paris", address: "Paris", price: 100, description: "Discover my penthouse in the center of Paris", user_id: 5, poster_url: "https://picsum.photos/200")
flat2 = Flat.create!(name: "Home in Berlin", address: "Berlin", price: 100, description: "Discover my penthouse in the center of Berlin", user_id: 1, poster_url: "https://picsum.photos/200")
flat3 = Flat.create!(name: "Home in London", address: "London", price: 100, description: "Discover my penthouse in the center of London", user_id: 2, poster_url: "https://picsum.photos/200")
flat4 = Flat.create!(name: "Home in Krakow", address: "Krakow", price: 100, description: "Discover my penthouse in the center of Krakow", user_id: 5, poster_url: "https://picsum.photos/200")
flat5 = Flat.create!(name: "Home in Sicily", address: "Sicily", price: 100, description: "Discover my penthouse in the center of Sicily", user_id: 5, poster_url: "https://picsum.photos/200")

booking1 = Booking.create!(user_id: 1, flat_id: 1, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking2 = Booking.create!(user_id: 1, flat_id: 2, start_date: Date.new(2024, 4, 5), end_date: Date.new(2024, 5, 5))
booking3 = Booking.create!(user_id: 3, flat_id: 4, start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 2))
booking4 = Booking.create!(user_id: 3, flat_id: 5, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking5 = Booking.create!(user_id: 3, flat_id: 5, start_date: Date.new(2024, 10, 10), end_date: Date.new(2024, 11, 11))

puts "Seed successful"
