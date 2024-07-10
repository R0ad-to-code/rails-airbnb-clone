class BookingsController < ApplicationController
  def index
    @user = current_user
    @bookings = current_user.bookings
    @my_flats = current_user.flats
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

  def update
    booking = Booking.find(params["id"])
    booking.status = params["status"]
    booking.save!
    redirect_to user_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
