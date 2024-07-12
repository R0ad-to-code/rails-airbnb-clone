# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Booking.destroy_all
Review.destroy_all
Flat.destroy_all
User.destroy_all

user1 = User.create!(email: "carlos@example.com", password: "password", owner?: true, name: "Carlos")
user2 = User.create!(email: "heena@example.com", password: "password", owner?: true, name: "Heena")
user3 = User.create!(email: "judith@example.com", password: "password", owner?: false, name: "Judith")
user4 = User.create!(email: "max@example.com", password: "password", owner?: false, name: "Max")
user5 = User.create!(email: "dimitra@example.com", password: "password", owner?: true, name: "Dimitra")
user6 = User.create!(email: "amelia@example.com", password: "password", owner?: true, name: "Amelia")
user7 = User.create!(email: "liam@example.com", password: "password", owner?: false, name: "Liam")
user8 = User.create!(email: "olivia@example.com", password: "password", owner?: true, name: "Olivia")
user9 = User.create!(email: "noah@example.com", password: "password", owner?: false, name: "Noah")
user10 = User.create!(email: "emma@example.com", password: "password", owner?: true, name: "Emma")

# Flats
flat1 = Flat.create!(name: "Flat in Paris", address: "Paris", price: 120, description: "Step into a beautifully furnished space adorned with tasteful decor, parquet floors, and large windows that bathe the rooms in natural light. The living area seamlessly connects to the dining space, creating an inviting atmosphere for relaxation and socializing.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG2.rSuFAJtHfm3nKXqj08Gd?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat2 = Flat.create!(name: "Studio in Berlin", address: "Berlin", price: 110, description: "Welcome to our spacious studio in the heart of Berlin! This charming abode offers a perfect blend of modern comfort and city life. As you step inside, you’ll be greeted by high ceilings, large windows, and original wooden floors that exude warmth and elegance.", user_id: user1.id, poster_url: "https://th.bing.com/th/id/OIG4.rv3vQDbd2wAkw2ZIbNCu?pid=ImgGn")
flat3 = Flat.create!(name: "Home in London", address: "London", price: 150, description: "Prepare gourmet meals in the sleek kitchen equipped with high-end appliances, marble countertops, and a Nespresso machine. Rest peacefully in the comfortable bedroom, complete with plush bedding and blackout curtains.", user_id: user2.id, poster_url: "https://th.bing.com/th/id/OIG4.IgXTG4Lj2aKDxhukfqyc?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat4 = Flat.create!(name: "Home in Krakow", address: "Krakow", price: 100, description: "Welcome to our beautiful, bright, and luxurious apartment in the heart of Kraków. This delightful flat offers a perfect blend of comfort and convenience, making it an ideal choice for both solo travelers and business professionals.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG1.EGKgub2PNIpMhArGJaTB?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat5 = Flat.create!(name: "Apartment in Sicily", address: "Sicily", price: 130, description: "The apartment is located in a completely renovated old building from 2020, ensuring a blend of historical charm and modern amenities. Enjoy abundant natural light through two large windows that open onto a balcony overlooking a private courtyard.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG4.tPvwVrEHahLe6Kjf4I0p?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat6 = Flat.create!(name: "Villa in Santorini", address: "Santorini", price: 200, description: "Experience luxury in our Santorini villa with breathtaking views of the Aegean Sea. The villa features a private pool, a spacious terrace, and elegant interiors with traditional Greek architecture.", user_id: user6.id, poster_url: "https://th.bing.com/th/id/OIG1.EGKgub2PNIpMhArGJaTB?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat7 = Flat.create!(name: "Loft in New York", address: "New York", price: 180, description: "Stay in a stylish loft in the heart of New York City. The loft boasts high ceilings, large windows, and a modern open-plan layout that is perfect for urban living.", user_id: user8.id, poster_url: "https://th.bing.com/th/id/OIG1.EGKgub2PNIpMhArGJaTB?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat8 = Flat.create!(name: "Cottage in the Cotswolds", address: "Cotswolds", price: 140, description: "Enjoy a peaceful retreat in a charming cottage in the Cotswolds. The cottage features a cozy fireplace, a beautiful garden, and traditional English decor.", user_id: user10.id, poster_url: "https://th.bing.com/th/id/OIG4.IgXTG4Lj2aKDxhukfqyc?w=1024&h=1024&rs=1&pid=ImgDetMain")
flat9 = Flat.create!(name: "Penthouse in Dubai", address: "Dubai", price: 300, description: "Experience opulence in a penthouse with stunning views of the Dubai skyline. The penthouse features modern amenities, luxurious furnishings, and a private balcony.", user_id: user2.id, poster_url: "https://th.bing.com/th/id/OIG4.rv3vQDbd2wAkw2ZIbNCu?pid=ImgGn")
flat10 = Flat.create!(name: "Cabin in the Rockies", address: "Rockies", price: 160, description: "Escape to a rustic cabin in the Rocky Mountains. The cabin offers beautiful mountain views, a cozy interior with a wood-burning stove, and easy access to hiking trails.", user_id: user9.id, poster_url: "https://th.bing.com/th/id/OIG2.rSuFAJtHfm3nKXqj08Gd?w=1024&h=1024&rs=1&pid=ImgDetMain")

# Bookings
booking1 = Booking.create!(user_id: user1.id, flat_id: flat1.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking2 = Booking.create!(user_id: user1.id, flat_id: flat2.id, start_date: Date.new(2024, 4, 5), end_date: Date.new(2024, 5, 5))
booking3 = Booking.create!(user_id: user3.id, flat_id: flat4.id, start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 2))
booking4 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
booking5 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 10, 10), end_date: Date.new(2024, 11, 11))
booking6 = Booking.create!(user_id: user7.id, flat_id: flat6.id, start_date: Date.new(2024, 7, 10), end_date: Date.new(2024, 7, 20))
booking7 = Booking.create!(user_id: user4.id, flat_id: flat7.id, start_date: Date.new(2024, 8, 15), end_date: Date.new(2024, 8, 25))
booking8 = Booking.create!(user_id: user8.id, flat_id: flat8.id, start_date: Date.new(2024, 6, 1), end_date: Date.new(2024, 6, 10))
booking9 = Booking.create!(user_id: user9.id, flat_id: flat9.id, start_date: Date.new(2024, 5, 5), end_date: Date.new(2024, 5, 15))

# Reviews
Review.create!(user: user4, flat: flat1, content: "This flat in Paris was the perfect place for our vacation. The decor is beautiful, the location is ideal, and we had everything we needed for a comfortable stay. Highly recommend!", rating: 5)
Review.create!(user: user2, flat: flat2, content: "The studio in Berlin was cozy and in a great location. It was clean and had all the amenities we needed. Would definitely stay here again.", rating: 4)
Review.create!(user: user3, flat: flat1, content: "This flat in Paris was the perfect place for our vacation. Highly recommend!", rating: 5)
Review.create!(user: user3, flat: flat3, content: "The home in London was absolutely fantastic. The kitchen was well-equipped, the bedroom was super comfortable, and the location was perfect. We had a wonderful stay.", rating: 5)
Review.create!(user: user1, flat: flat4, content: "The apartment in Krakow was bright and comfortable. It was close to everything we wanted to see and do. Great place to stay for both work and leisure.", rating: 4)
Review.create!(user: user5, flat: flat5, content: "The apartment in Sicily was charming and full of character. The balcony was a great spot to relax in the mornings. Loved the modern amenities mixed with the historical charm.", rating: 5)
Review.create!(user: user1, flat: flat3, content: "Amazing experience! The flat was beautifully decorated and in a prime location. The host was very responsive and provided great recommendations for local restaurants. Would definitely stay here again.", rating: 5)
Review.create!(user: user4, flat: flat6, content: "The villa in Santorini was simply breathtaking. The view of the Aegean Sea was mesmerizing, and the private pool was a great bonus. The interiors were elegant and comfortable. Highly recommend!", rating: 5)
Review.create!(user: user3, flat: flat7, content: "The loft in New York was fantastic! The high ceilings and large windows made the space feel very open and bright. The location was perfect for exploring the city. I had a wonderful stay.", rating: 4)
Review.create!(user: user9, flat: flat10, content: "The cabin in the Rockies was the perfect getaway. It was cozy and had everything we needed for a comfortable stay. The views were stunning and we loved the hiking trails nearby. Will definitely return!", rating: 5)
Review.create!(user: user2, flat: flat8, content: "The cottage in the Cotswolds was charming and peaceful. The garden was lovely and the interior was tastefully decorated. It was a perfect retreat from the city. Would highly recommend to anyone looking for a relaxing break.", rating: 4)
Review.create!(user: user5, flat: flat9, content: "Staying in the penthouse in Dubai was a luxurious experience. The views from the balcony were incredible, and the amenities were top-notch. The host was very accommodating and made sure we had everything we needed.", rating: 5)
Review.create!(user: user6, flat: flat2, content: "The studio in Berlin was charming and had a lot of character. The high ceilings and wooden floors added a nice touch. It was conveniently located and perfect for exploring the city. Would stay here again.", rating: 4)
Review.create!(user: user7, flat: flat4, content: "The apartment in Krakow was bright, clean, and very comfortable. The location was great, close to many attractions and restaurants. The host was friendly and provided excellent local tips. A very pleasant stay.", rating: 5)
Review.create!(user: user10, flat: flat5, content: "The apartment in Sicily was a delightful blend of historical charm and modern amenities. The balcony overlooking the courtyard was a great spot to relax. The host was very helpful and responsive. Highly recommended!", rating: 4)
Review.create!(user: user8, flat: flat1, content: "The flat in Paris was beautiful and in a fantastic location. The decor was stylish and the rooms were spacious. The host was very attentive and made our stay memorable. Would love to come back!", rating: 5)
Review.create!(user: user2, flat: flat1, content: "The flat in Paris was delightful! The furnishings were elegant, and the location was superb. The host was extremely hospitable and provided excellent recommendations for things to do in the area. Highly recommend.", rating: 5)
Review.create!(user: user3, flat: flat3, content: "My stay in the London home was wonderful. The kitchen was fully equipped and the bed was incredibly comfortable. The neighborhood was quiet and charming. I would definitely stay here again.", rating: 4)
Review.create!(user: user4, flat: flat7, content: "The New York loft was fantastic. The high ceilings and modern design made the space feel luxurious. It was centrally located, making it easy to explore the city. A great place to stay.", rating: 5)
Review.create!(user: user9, flat: flat6, content: "The villa in Santorini exceeded our expectations. The views were stunning, and the private pool was a highlight. The villa was beautifully decorated and very comfortable. We had a fantastic time.", rating: 5)
Review.create!(user: user6, flat: flat5, content: "The apartment in Sicily was perfect for our stay. It had a wonderful mix of old-world charm and modern amenities. The balcony was a lovely place to unwind. The host was great and very helpful.", rating: 4)
Review.create!(user: user8, flat: flat8, content: "The cottage in the Cotswolds was a perfect retreat. It was cozy and had a beautiful garden. The interior was charming and comfortable. We had a relaxing and enjoyable stay.", rating: 4)
Review.create!(user: user10, flat: flat10, content: "The cabin in the Rockies was amazing. It was rustic yet comfortable, with beautiful views of the mountains. The wood-burning stove added a nice touch. We loved our stay and would definitely return.", rating: 5)
Review.create!(user: user7, flat: flat9, content: "The penthouse in Dubai was an incredible experience. The views were breathtaking and the amenities were luxurious. The host was very accommodating and made sure we had a great stay.", rating: 5)
Review.create!(user: user1, flat: flat4, content: "The apartment in Krakow was fantastic. It was bright, clean, and very comfortable. The location was excellent, close to many attractions and restaurants. The host was very friendly and provided great local tips.", rating: 5)
Review.create!(user: user5, flat: flat3, content: "Staying in the London home was a pleasure. The kitchen was modern and fully equipped, and the bed was very comfortable. The neighborhood was quiet and charming. I would definitely stay here again.", rating: 4)

# user1 = User.create!(email: "test1@email.com", password: "test1@email.com", owner?: true, name: "Carlors")
# user2 = User.create!(email: "test2@email.com", password: "test2@email.com", owner?: true, name: "Heena")
# user3 = User.create!(email: "test3@email.com", password: "test3@email.com", owner?: false, name: "Judith")
# user4 = User.create!(email: "test4@email.com", password: "test4@email.com", owner?: false, name: "Max")
# user5 = User.create!(email: "test5@email.com", password: "test5@email.com", owner?: true, name: "Dimitra")

# flat1 = Flat.create!(name: "Flat in Paris", address: "Paris", price: 100, description: "Step into a beautifully furnished space adorned with tasteful decor, parquet floors, and large windows that bathe the rooms in natural light. The living area seamlessly connects to the dining space, creating an inviting atmosphere for relaxation and socializing.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG2.rSuFAJtHfm3nKXqj08Gd?w=1024&h=1024&rs=1&pid=ImgDetMain")
# flat2 = Flat.create!(name: "Studio in Berlin", address: "Berlin", price: 100, description: "Welcome to our spacious studio in the heart of Berlin! This charming abode offers a perfect blend of modern comfort and city life. As you step inside, you’ll be greeted by high ceilings, large windows, and original wooden floors that exude warmth and elegance.", user_id: user1.id, poster_url: "https://th.bing.com/th/id/OIG4.rv3vQDbd2wAkw2ZIbNCu?pid=ImgGn")
# flat3 = Flat.create!(name: "Home in London", address: "London", price: 100, description: "Prepare gourmet meals in the sleek kitchen equipped with high-end appliances, marble countertops, and a Nespresso machine. Rest peacefully in the comfortable bedroom, complete with plush bedding and blackout curtains.", user_id: user2.id, poster_url: "https://th.bing.com/th/id/OIG4.IgXTG4Lj2aKDxhukfqyc?w=1024&h=1024&rs=1&pid=ImgDetMain")
# flat4 = Flat.create!(name: "Home in Krakow", address: "Krakow", price: 100, description: "Welcome to our beautiful, bright, and luxurious apartment in the heart of Kraków. This delightful flat offers a perfect blend of comfort and convenience, making it an ideal choice for both solo travelers and business professionals.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG1.EGKgub2PNIpMhArGJaTB?w=1024&h=1024&rs=1&pid=ImgDetMain")
# flat5 = Flat.create!(name: "Apartment in Sicily", address: "Sicily", price: 100, description: "The apartment is located in a completely renovated old building from 2020, ensuring a blend of historical charm and modern amenities. Enjoy abundant natural light through two large windows that open onto a balcony overlooking a private courtyard.", user_id: user5.id, poster_url: "https://th.bing.com/th/id/OIG4.tPvwVrEHahLe6Kjf4I0p?w=1024&h=1024&rs=1&pid=ImgDetMain")

# booking1 = Booking.create!(user_id: user1.id, flat_id: flat1.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
# booking2 = Booking.create!(user_id: user1.id, flat_id: flat2.id, start_date: Date.new(2024, 4, 5), end_date: Date.new(2024, 5, 5))
# booking3 = Booking.create!(user_id: user3.id, flat_id: flat4.id, start_date: Date.new(2024, 9, 1), end_date: Date.new(2024, 9, 2))
# booking4 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 2, 3), end_date: Date.new(2024, 4, 4))
# booking5 = Booking.create!(user_id: user3.id, flat_id: flat5.id, start_date: Date.new(2024, 10, 10), end_date: Date.new(2024, 11, 11))

# Review.create!(user: User.first, flat: flat1, content: "Great place to stay!", rating: 5)
# Review.create!(user: user2, flat: flat2, content: "Nice and cozy.", rating: 4)
# Review.create!(user: user2, flat: flat2, content: "Not Nice and cozy.", rating: 1)

puts "Seed successful"
