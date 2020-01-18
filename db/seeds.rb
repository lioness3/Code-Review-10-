require 'faker'

products = 50.times do |index|
  Product.create!(
    name: Faker::Dessert.topping,
    cost: Faker::Number.decimal(l_digits: 2),
    country_of_origin: Faker::Address.country)
  end

reviews = 250.times do |index|
  Review.create!(
    author: Faker::Superhero.name,
    content_body:
    Faker::Hipster.paragraph_by_chars(characters: 123, supplemental: false),
    rating: Faker::Number.within(range: 1..5),
    product_id: Faker::Number.within(range: 1..250))
end
