# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

50.times do |index|
  Product.create!(content_body: Faker::Lorem.sentence(250, false, 50).chop,
                 name: Faker::Name.name,
                 cost: Faker::Number.between(1, 30),
                 rating: Faker::Number.between(1,5))
  
end

p "Created #{Product.count} products"