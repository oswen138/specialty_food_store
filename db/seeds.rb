# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(content_body: Faker::Lorem.sentence(word_count: 250, false, 50).chop,
                 name: Faker::Name.name,
                 cost: Faker::Number.rand(1..30),
                 rating: Faker::Number.rand(1..5),
                 country_of_origin: Faker::Address.country)
  
end

250.times do |index|
  Review.create!(author: Faker::LuLu.writer,
                        content_body: Faker::Lorem.sentence.rand(50..250).chop,
                        rating: Faker::Number.rand(1..5),
                        product_id: product_id)
end

p "Created #{Product.count} products and #{Review.count} reviews"