class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new

  end

  def create
    @product = Product.find_by(id: params[:id])
    product = Product.find_by(id: params[:id])
    comment = Comment.create(params.require(:comment).permit(:user_id, :product_id, :body))
    redirect_to request.referrer
  end

  def edit
  end

  def update
  
  end

  def destroy
    comment = current_user.comments.find_by(id: params[:id])
    comment.destroy
    redirect_to request.referrer
  end

end
