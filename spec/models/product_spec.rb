require 'rails_helper'

describe Product do
  it { should have_many(:reviews) }
end

describe Product do
  it("titleizes the name of an product") do
    product = Product.create({name: "broccoli", country_of_origin: "italy"})
    expect(product.name()).to(eq("Broccoli"))
  end
end