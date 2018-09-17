# Mario's Speciality Food Products

Mario's Speciality Food site has functionality to review products. All products have a name, cost and country of origin. All reviews have author, content_body and rating. (A rating is a number between 1 and 5.).

#### Site Features
1. Site admins are able to add, update and delete new products.
1. Users are able to click an individual product to see its detail page.
1. Users are able to add a review to a product.

#### Scopes
1. The product with the most reviews.
1. The three most recently added products.
1. All products made in the USA for buyers that want to buy local products.

#### Validations
1. All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
1. The review's content_body must be between 50 and 250 characters.

#### Seeding
Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.

#### Installation
1. Download github repository from
`git clone https://github.com/craigwann/marios.git`
1. Ruby version 2.4.1 Rails version 5.2.1
1. navigate to project directory `bundle install` and `rake db:setup`


## License

This software is licensed under the MIT license.

Copyright (c) 2018 **Craig Wann**
