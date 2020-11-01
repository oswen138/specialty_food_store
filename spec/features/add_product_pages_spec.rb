require 'rails_helper'
require 'capybara/rails'

describe "the add a product process" do
  it "adds a new product" do
    @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', :password_confirmation => 'f4k3p455w0rd', admin: true)
    login_as(user, :scope => :user)
    visit products_path
    click_link 'Sign In!'
    fill_in 'Email', :with => 'apple@gmail.com'
    fill_in 'Password', :with => 'apple'
    click_button 'Log in'
    click_link 'Create new product'
    fill_in 'Name', :with => 'Pickle'
    fill_in 'Country of origin', :with => 'Italy'
    fill_in 'Cost', :with => '500'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Pickle'
  end

  it "gives an error when no name is entered" do
    @user = User.create!(:email => 'test@example.com', :password => 'f4k3p455w0rd', admin: true)
    visit new_product_path
    click_link 'Sign In!'
    fill_in 'Email', :with => 'test@example.com'
    fill_in 'Password', :with => 'f4k3p455w0rd'
    click_button 'Log in'
    click_on 'Create Product'
    fill_in 'Name', :with => ''
    fill_in 'Cost', :with => '100'
    fill_in 'Country of origin', :with => 'Italy'
    click_on 'Create Product'
    expect(page).to have_content "Name can't be blank"
  end
end