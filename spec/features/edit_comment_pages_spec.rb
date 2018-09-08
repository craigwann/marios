require 'rails_helper'

describe "the edit a review process" do
  it "edits a review" do
    product = Product.create(:name => 'Hamburger', :country => 'Hamburg', :price => 5.99)
    review = Review.create(:author => 'Mr. Johnson', :content_body => 'too fatty', :rating => 2, :product_id => product.id)
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Content body', :with => 'Wash the dog'
    click_on 'Update Review'
    expect(page).to have_content 'Wash the dog'
  end

  it "gives error when no content_body is entered" do
    product = Product.create(:name => 'Hamburger', :country => 'Hamburg', :price => 5.99)
    review = Review.create(:author => 'Mr. Johnson', :content_body => 'too fatty', :rating => 2, :product_id => product.id)
    visit product_path(product)
    click_on 'Edit'
    fill_in 'Author', :with => ''
    click_button 'Update Review'
    expect(page).to have_content 'errors'
  end
end
