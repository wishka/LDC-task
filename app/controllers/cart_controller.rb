class CartController < ApplicationController

  def index
    @orders_input = params[:orders]
	  @items = parse_orders_input @orders_input

#Выводим список продуктов в корзине
	  @items.each do |item|
#id, cnt
		item[0] = Product.find(item[0])
	  end
  end
end
