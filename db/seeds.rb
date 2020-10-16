# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Food.vegetable,
                        cost: Faker::Number.between(1, 30),
                        country_of_origin: "USA")
                        image_url: "site.com/here_is_a_picture_of_cardamom.jpg")
end

p "Created #{Product.count} products"


Review.destroy_all

50.times do |index|
  Review.create!(author: Faker::LuLu.writer,
                        content_body: Faker::Lorem.sentence.between(50, 250).chop,
                        rating: Faker::Number.between(1,5)
                        product_id: @product_id
end

p "Created #{Review.count} reviews"
