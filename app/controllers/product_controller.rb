class ProductController < ApplicationController
  before_action :admin_user,     only: :edit


  def new
  end

  def show
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
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
       Product.find(params[:menu_id]).destroy
       flash[:success] = "Product deleted"
       redirect_to root_url
     end

  # Подтверждает администратора.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

  def monday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :monday
  end

  def tuesday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :tuesday
  end

  def wednesday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :wednesday
  end

  def thursday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :thursday
  end

  def friday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :friday
  end

  def saturday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :saturday
  end

  def sunday
    @products = Product.where("category_id = 1").limit(3)
    @products2 = Product.where("category_id = 2").limit(3)
    @products3 = Product.where("category_id = 3").limit(3)
    render :sunday
  end

  private

  def product_params
    params.permit(:category_id, :menu_id, :title, :discribe, :price, :path_to_image)
  end

end
