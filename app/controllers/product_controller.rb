class ProductController < ApplicationController
  before_action :admin_user,     only: :edit

  def show
    @products = Product.all.limit(9)
    @product = Product.find(params[:product_id])
  end

  # Подтверждает администратора.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  private

  def products_params
    params.require(:product).permit(:category_id, :menu_id, :title, :discribe, :price, :path_to_image)
  end

end
