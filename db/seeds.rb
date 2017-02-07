# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.create(city: "Atlanta",
            country: "USA")

atlanta = Trip.find(1)

Photo.create(description: "Favorite city in the world!", 
						photo_url: "http://www.wheretraveler.com/sites/default/files/styles/promoted_image_social_large/public/atlanta-aerial_c-richardcawood-flickr.jpg?itok=e1ZjM0AZ", 
						trip_id: atlanta.id)

Photo.create(description: "Favorite city in the world!", 
						photo_url: "https://media1.britannica.com/eb-media/62/66862-004-C63E8F9F.jpg",
						trip_id: atlanta.id)