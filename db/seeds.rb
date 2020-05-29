# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# actor = Actor.new(first_name: "Robert", last_name: "Pattinson", known_for: "Twilight")
# actor.save

# actor = Actor.new(first_name: "Sean", last_name: "Fitzpatrick", known_for: "Emperor's New Groove")
# actor.save

# actor = Actor.new(first_name: "Steve", last_name: "Carrell", known_for: "The Office")
# actor.save

10.times do 
  Actor.create([{
  first_name: Faker::Name.name,
  last_name: 
  known_for: Faker::Movie
  }])
end 