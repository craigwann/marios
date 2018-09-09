class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :presence => true
  validates :content_body, :presence => true
  validates_length_of :content_body, :minimum => 50, :maximum => 250
  validates :rating, :presence => true
  validates :rating,  numericality: { only_integer: true, greater_than: 0, less_than: 6 }

end
