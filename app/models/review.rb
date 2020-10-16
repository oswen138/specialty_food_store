class Review < ApplicationRecord
  validates_length_of :content_body, maximum: 250
  belongs_to :product
end