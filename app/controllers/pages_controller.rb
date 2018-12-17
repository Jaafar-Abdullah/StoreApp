class PagesController < ApplicationController
  def home
    @products = Product.all
  end
  def buy
    @product = Product.find_by(id: params[:id])
    # ------
    # save the product as saleing product
    saleProduct = Sale.create(product_id: params[:id].to_i , seller_id: @product.user_id, buyer_id: current_user.id)
    @product.update(is_sale: true)
    @product.save
end

  def rent
    @product = Product.find_by(id: params[:id])
  end
 
  
end
