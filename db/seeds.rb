User.create!([
  {email: "k@test.com", encrypted_password: "$2a$11$Y9D4LJot4aNofZZmxRN7O.6GC7G6Ywl5NzwlJnwc1kLC2it0pD.cG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-02-13 15:58:25", last_sign_in_at: "2017-02-13 15:58:25", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "kimberlywondo"}
])
Photo.create!([
  {description: "Lovely!", trip_id: 1, photo_url: nil, image: "S_122002.jpg"}
])
Trip.create!([
  {city: "Cape Town ", country: "South Africa", user_id: 1}
])
