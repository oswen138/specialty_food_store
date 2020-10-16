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
  @product = Product.new(:name => Faker::Food.dish, :cost => Faker::Number.between(1,15), :country_of_origin =>'USA')
  if @product[:cost] > 8
    @product[:country_of_origin] = 'France'
  end
  @product.save!
  5.times do |z|
    @review = Review.create!(:author => Faker::FamilyGuy.character, :content_body => Faker::Lorem.characters(100), :rating => Faker::Number.between(1,5), :product_id =>  @product.id)
  end
end



Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Callbacks