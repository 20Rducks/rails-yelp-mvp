# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0794302948945", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "020802948945", category: "japanese"}
pizza_south = {name: "Pizza South", address: "122, landells, France SE67", phone_number: "0204 5433 5433e", category: "belgian"}
chicken_burger_palace = {name: "Chicken Burger Palace", address: "122, swisslandere, Norway", phone_number: "0772 5433 5433e", category: "italian"}
blight = {name: "Blight", address: "11, lorgenigna, Ireland yh67", phone_number: "42445 6775 1244", category: "belgian"}

[dishoom, pizza_east, pizza_south, chicken_burger_palace, blight].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
