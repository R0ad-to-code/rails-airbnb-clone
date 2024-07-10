class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @flats = Flat.all
  end

  def new
  end

  # def owner_index
  #if the current user is an owner
  #get all the flats of this owner and display them in a list


  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end

end
