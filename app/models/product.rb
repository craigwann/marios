class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :country, :presence => true
  validates :price, :presence => true


  scope :most_reviews, -> {(
    select("products.id, products.name, products.country, products.price, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
    )}

    scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

    scope :search_united, ->  { where(country: "United States")}
    scope :search_usa, ->  { where(country: "USA")}

end
