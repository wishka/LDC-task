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

def parse_orders_input orders_input
  s1 = orders_input.split(/,/)

  arr = []
  s1.each do |x|

    s2 = x.split(/=/)
    s3 = s2[0].split(/_/)
    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]
    arr.push arr2

  end
return arr
end

end
