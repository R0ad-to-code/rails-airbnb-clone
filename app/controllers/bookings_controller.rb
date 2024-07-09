class BookingsController < ApplicationController
  def index
    @user = User.find(params["user_id"])
    @bookings = Booking.where(user_id: params["user_id"])
    @my_flats = Flat.where(user_id: params["user_id"])
  end
end
