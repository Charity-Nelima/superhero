# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Power.create!([
 
  {
    
    name: "super strength",
    description: "gives the wielder super-human strengths"
    
  },
  {
    
    name: "flight",
    description: "gives the wielder the ability to fly through the skies at supersonic speed"

},
  

 
])

puts "✅ Done seeding!"


Hero.create!([
 
  {
    # id: 1, 
    name: "super strength",
    super_name: "wilkey"
    
  },
])

puts "✅ Done seeding!"

HeroPower.create!([
 
  {
    # id: 1, 
    strength:"average",
    hero_id: "1",
    power_id: "2",
  
    
  },
])

puts "✅ Done seeding!"
