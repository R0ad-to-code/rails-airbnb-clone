class BookingsController < ApplicationController
  def index
    @user = User.find(params["user_id"])
    @bookings = Booking.where(user_id: params["user_id"])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = Flat.find(params[:flat_id])
    @booking.user = current_user
    if @booking.save
      redirect_to root_path, notice: 'Booking was successfully created.'
    else
      redirect_to flats_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
