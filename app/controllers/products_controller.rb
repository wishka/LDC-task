class ProductsController < ApplicationController
  before_action :admin_user,     only: :edit
  before_action :set_product, only: [:edit, :update]

  require 'pry'


  def new
    @product = Product.new
  end

  def index
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3")
    @all_products = (@products + @products2 + @products3)
  end

  def show
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
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
         redirect_to 'show'
       else
         render 'edit'
       end
     end

     def destroy
       Product.find(params[:menu_id]).destroy
       flash[:success] = "Product deleted"
       redirect_to root_url
     end

     def monday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :monday
     end

     def tuesday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :tuesday
     end

     def wednesday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :wednesday
     end

     def thursday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :thursday
     end

     def friday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :friday
     end

     def saturday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :saturday
     end

     def sunday
       @products = Product.where("category_id = 1").limit(3)
       @products2 = Product.where("category_id = 2").limit(3)
       @products3 = Product.where("category_id = 3")
       render :sunday
     end

     # Подтверждает администратора.
     def admin_user
       redirect_to(root_url) unless current_user.admin?
     end

  private

  def product_params
    params.require(:product).permit(:category_id, :menu_id, :title, :discribe, :price, :path_to_image)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
