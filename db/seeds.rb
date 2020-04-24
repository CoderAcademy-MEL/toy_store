puts "clearing out db"
User.destroy_all
Toy.destroy_all

puts "starting seed file"

3.times do 
  Manufacturer.create(
    name: Faker::TvShows::Seinfeld.business,
    location: Faker::Nation.capital_city
  )
end

3.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "password"
  )
  puts "created new user"
  random_manufacturer_index = rand(1..3)
  2.times do 
    Toy.create(
      name: "Toy #{Toy.count + 1}",
      description: "Toy #{Toy.count + 1} is super safe",
      date_posted: Time.now,
      posted_by: ["Sally", "Sam", "Tyson", "Mark"].sample,
      user_id: user.id,
      manufacturer_id: random_manufacturer_index
    )
    puts "created new toy"
  end 
end