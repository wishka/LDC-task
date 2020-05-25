class CategoriesController < ApplicationController
  has_many :products

  def new
  end

  def show
    @products = Product.where("category_id = 1")
  end

  def edit
  end

  def create
     @product = Product.new(product_params)
     if @product.save
       flash[:info] = "You successfully create a new product!"
       redirect_to root_url
     else
       render 'new'
     end
   end

     def update
       if @product.update_attributes(product_params)
         flash[:success] = "Product updated"
         redirect_to @product
       else
         render 'edit'
       end
     end

     def destroy
       Product.find(params[:id]).destroy
       flash[:success] = "Product deleted"
       redirect_to root_url
     end

  # Подтверждает администратора.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  private

  def product_params
    params.require(:product).permit(:category_id, :menu_id, :title, :discribe, :price, :path_to_image)
  end

end
