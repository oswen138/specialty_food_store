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
  product = Product.create!(content_body: Faker::Lorem.sentence(250, false, 50).chop,
                 name: Faker::Name.name,
                 cost: Faker::Number.between(1, 30),
                 rating: Faker::Number.between(1,5))
  
end


250.times do |index|
  product_random_id = Product.all.ids.sample
  review = Review.create!(author: Faker::Movies::Lebowski.character, content: Faker::Hipster.paragraph_by_chars(characters: 150, supplemental: false), rating: rand(6), product_id: product_random_id)
end

