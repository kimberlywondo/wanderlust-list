User.create!([
  {email: "test@test.com", encrypted_password: "$2a$11$ryJnV.saD2N4rVbrN1iK0ugDIFx4XekIVFLm5oupOuvl65LgItB0W", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-12 16:32:22", last_sign_in_at: "2017-02-12 16:32:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "test"},
  {email: "test2@test2.com", encrypted_password: "$2a$11$/fwPkqefyAjiK9W/IN8cou09h31XWBvFLMyzjJVkyh1HIU2fPGGb2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-12 16:34:41", last_sign_in_at: "2017-02-12 16:34:41", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "testuser2"}
])
Photo.create!([
  {description: "city1description", trip_id: 1, photo_url: "city1photo.jpg", image: nil},
  {description: "description2", trip_id: 2, photo_url: "photourl2.jpg", image: nil},
  {description: "user2desc", trip_id: 3, photo_url: "ucer2url", image: nil},
  {description: "4", trip_id: 4, photo_url: "3", image: nil},
  {description: "2222", trip_id: 6, photo_url: "2222", image: nil},
  {description: "testing", trip_id: 7, photo_url: "tesring", image: nil},
  {description: "This is the photo added to trip 7 from my photo/new.html.erb", trip_id: 7, photo_url: nil, image: "jkjkljkl.jpg"}
])
Trip.create!([
  {city: "city1", country: "country1", user_id: 1},
  {city: "city2", country: "country2", user_id: 1},
  {city: "user2city", country: "ucer2country", user_id: 2},
  {city: "1", country: "22", user_id: 2},
  {city: "2222", country: "2222", user_id: 2},
  {city: "testing", country: "testing", user_id: 2}
])
