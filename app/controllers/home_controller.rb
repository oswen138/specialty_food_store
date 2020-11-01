class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.all
    @new_products = Product.most_recent
    @reviewed_product = Product.most_reviewed
    @user = current_user
  end
end