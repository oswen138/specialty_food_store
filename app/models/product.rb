class Product < ApplicationRecord
  around_save(:titleize_product)
  validates :name, :cost, :country_of_origin, presence: true
  validates_length_of :name, maximum: 100
  has_many :reviews, dependent: :destroy

  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}

  scope :most_reviewed, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(250)
    )}

    def titleize_product
      self.name = self.name.titleize
    end
end



