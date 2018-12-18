class ProductsController < ApplicationController
  def new
    @product = Product.new 
  end
  def create 
    @product = Product.create(product_params)
    redirect_to @product
  end 

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    product = Product.find_by(id: params[:id])
    product.update(product_params)
    redirect_to product_path(product)
  end

  def destroy 
    prodect = Product.find_by(id: params[:id])
  end

  def show
    @product = Product.find(params[:id])
    session[:id] = @product.id
  end
  

  def product_params 
      product_params = params.require(:product).permit(:name, :description, :price,:image_url).merge(user_id: current_user.id)
      return product_params
  end 
end
