class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @products = Product.limit(10)
  end

  def my_sales
    @sales = current_user.sales
  end
end
