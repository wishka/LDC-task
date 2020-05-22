class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true

  def initialize (category_id, menu_id, title, discribe, price, path_to_image)
    @products = Product.find_by(:category_id )
  end
end
