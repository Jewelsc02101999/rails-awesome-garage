# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning data base"
Car.destroy_all
Owner.destroy_all

puts "creating owners"
owner1 = Owner.create!(nickname: "Daves cars")
owner2 = Owner.create!(nickname: "Toms Vehicles")
owner3 = Owner.create!(nickname: "Cars with Ray")
owner4 = Owner.create!(nickname: "Shelly with the velly")
puts "#{Owner.count} created"

puts "creating cars"

Car.create!(brand: "seat", model: "arona", year: "2019", fuel: "petrol", owner: owner1)
Car.create!(brand: "vauxhall", model: "astra", year: "2018", fuel: "diesel", owner: owner2)
Car.create!(brand: "nissan", model: "juke", year: "2016", fuel: "electric", owner: owner3)
Car.create!(brand: "volkswagen", model: "polo", year: "2012", fuel: "petrol", owner: owner4)

puts "#{Car.count} created"
