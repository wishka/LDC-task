class WeekMenuController < ApplicationController
  def thursday
    @products = Product.all
  end

  def show
  end
end
