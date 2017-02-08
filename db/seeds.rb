# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trip.create(city: "City 1",
            country: "USA")

Trip.create(city: "City 1",
            country: "USA")

Trip.create(city: "City 2",
            country: "USA")

Trip.create(city: "City 3",
            country: "USA")

city1 = Trip.find(1)
city2 = Trip.find(2)
city3 = Trip.find(3)

Photo.create(description: "City 1 photo 1", 
						photo_url: "City 1 photo_url 1", 
						trip_id: city1.id)

Photo.create(description: "City 1 photo 2", 
						photo_url: "City 1 photo_url 2",
						trip_id: city1.id)

Photo.create(description: "City 2 photo 1", 
						photo_url: "City 2 photo_url 1",
						trip_id: city2.id)

Photo.create(description: "City 2 photo 2", 
						photo_url: "City 2 photo_url 2",
						trip_id: city2.id)

Photo.create(description: "City 3 photo 1", 
						photo_url: "City 3 photo_url 2",
						trip_id: city3.id)