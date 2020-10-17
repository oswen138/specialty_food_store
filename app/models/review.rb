class Review < ApplicationRecord
  belongs_to :product
  validates_length_of :content_body, minimum: 50
  validates_length_of :content_body, maximum: 250
  validates :rating, numericality: { greater_than_or_equal_to: 1}
  validates :author, presence: true
  validates :rating, presence: true
end


