class BookingsController < ApplicationController
  def new
    
  end

  def show
    @product = Product.find_by(id: params[:id])
    @booking = Booking.new
    
  end

  def create
    # product = Product.find_by(id: params[:product_id])
    @booking = Booking.new(params.require(:booking).permit(:start_id,:end_date,:product_id).merge(renter_id: current_user.id))
    @booking.rent_id = @booking.product.user_id
    total_price = (@booking.end_date - @booking.start_id)
    @booking.total_price = total_price * @booking.product.price
    # raise
    @booking.save
    redirect_to bookings_path
  end 

  def edit
  end

  def index
    @bookings = Booking.all
  end

 
end
