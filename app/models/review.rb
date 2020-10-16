class Review < ApplicationRecord
  validates_numericality_of :rating, greater_than_or_equal_to: 1
  validates_length_of :content_body, minimum: 50
  validates_length_of :content_body, maximum: 250
  belongs_to :product
endtrl;fjsl;ejgl;kseg