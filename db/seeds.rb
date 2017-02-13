User.create!([
  {email: "kw@test.com", encrypted_password: "$2a$11$764uyKSuC9GRrXCfAFhYbu4U4nrFuSkS.18sKzsutS3KK67ksBkqu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-13 04:37:22", last_sign_in_at: "2017-02-13 04:37:22", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "kimberlywondo"}
])
Photo.create!([
  {description: "blahhhh", trip_id: 1, photo_url: nil, image: nil},
  {description: "photo 1", trip_id: 1, photo_url: nil, image: "jkjkljkl.jpg"}
])
Trip.create!([
  {city: "Cape town", country: "south africa", user_id: 1}
])
