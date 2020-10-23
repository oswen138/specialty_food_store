class HomeController < ApplicationController
  def index
    if signed_in?
      render :file => 'products/index'
   else
      render :file => 'home/index', :layout => false
   end
  end
end
