require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'pickle'
    fill_in 'Country of origin', :with => 'Italy'
    fill_in 'Cost', :with => '500'
    click_on 'Submit'
    click_on 'Pickle'
    click_on 'Add a review'
    fill_in 'Author', :with => 'Kingsley'
    fill_in 'Rating', :with => '3.5'
    fill_in 'Content body', :with => 'Very sour'
    click_on 'Submit'
    expect(page).to have_content 'review successfully added!'
    expect(page).to have_content 'Kingsley'
  end

  it "gives an error when no name is entered" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'pickle'
    fill_in 'Country of origin', :with => 'Italy'
    fill_in 'Cost', :with => '500'
    click_on 'Submit'
    click_on 'Pickle'
    click_on 'Add a review'
    click_on 'Submit'
    expect(page).to have_content "Author can't be blank"
  end
end