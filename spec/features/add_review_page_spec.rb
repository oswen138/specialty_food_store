require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :password_confirmation => 'f4k3p455w0rd', admin: true)
    visit products_path
    click_link 'Sign In!'
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_button 'Log in'
    click_link 'Create new product'
    fill_in 'Name', :with => 'pickle'
    fill_in 'Country of origin', :with => 'Italy'
    fill_in 'Cost', :with => '500'
    click_on 'Create Product'
    click_on 'Pickle'
    click_on 'Add a new review'
    fill_in 'Author', :with => 'Kingsley'
    fill_in 'Rating', :with => '3.5'
    fill_in 'Content body', :with => 'Very sour'
    click_on 'Create Review'
    expect(page).to have_content 'Kingsley'
  end

  it "gives an error when no content is entered" do
    visit products_path
    click_link 'Create new product'
    fill_in 'Name', :with => 'pickle'
    fill_in 'Country of origin', :with => 'Italy'
    fill_in 'Cost', :with => '500'
    click_on 'Create Product'
    click_on 'Pickle'
    click_on 'Add a new review'
    click_on 'Submit'
    expect(page).to have_content "Author can't be blank"
  end
end