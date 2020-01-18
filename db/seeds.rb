require 'faker'

50.times do
  Product.create! do |product|
    product.name = Faker::Dessert.topping
    product.cost =  Faker::Number.decimal(l_digits: 2)
    product.country_of_origin = Faker::Address.country
    5.times do
      product.reviews.new do |review|
       review.author = Faker::Superhero.name
        review.content_body =
        Faker::Hipster.paragraph_by_chars(characters: 123, supplemental: false)
        review.rating = Faker::Number.within(range: 1..5)
        review.product_id = Faker::Number.within(range: 1..50)
      end
    end
end
end
