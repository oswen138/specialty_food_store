class Review < ApplicationRecord
  belongs_to :product
  validates_length_of :content_body, minimum: 50
  validates_length_of :content_body, maximum: 250
end


