class CategoriesController < ApplicationController
  has_many :products
  has_many :menu_id

  def new
  end

  def index
        categories = Category.left_outer_joins(:products)
                            .select('categories.id, categories.name, COUNT(products.id) AS products_count')
                            .group('categories.id, categories.name')
        render json: categories, status: :ok
    end

  def edit
  end

  def show
        category = find_category(params[:id])
        render json: category, status: :ok
    end

  def create
        category = Category.new(cat_params)
        if category.save
            category = find_category(category.id)
            render json: category, status: 201
        else
            # Что-то пошло не так
            render json: {errors: category.errors}, status: :unprocessable_entity
        end
    end

    def update
        category = Category.find(params[:id])
        if category.update_attributes(cat_params)
            render json: category, status: :ok
        else
            # Что-то пошло не так
            render json: {errors: category.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy
        render json: category, status: 204
    end

    private

    def cat_params
        params.require(:category).permit(:name)
    end
    def find_category id
        Category.left_outer_joins(:products)
                            .select('categories.id, categories.name, COUNT(products.id) AS products_count')
                            .where(id: id)
                            .group('categories.id, categories.name')
    end

    # Подтверждает администратора.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
