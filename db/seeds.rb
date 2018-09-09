Product.destroy_all
Review.destroy_all

20.times do |index|
  Product.create(name: Faker::Food.dish, country: Faker::Address.country, price: Faker::Number.decimal(2).to_i)
end

Product.all.each do |product|
  5.times do |index|
    word_num = rand(3..10)
    product.reviews.create(author: Faker::Name.name, content_body: Faker::Lorem.sentence(word_num, true), rating: Faker::Number.between(1, 5), product_id: product.id)
  end
end
