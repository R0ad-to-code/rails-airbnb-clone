class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @flats = Flat.all
  end

  def new
  end

  def owner_index
    @user = User.find(params["user_id"])
    @flats = Flat.where(user_id: params["user_id"])
  #if the current user is an owner
  #get all the flats of this owner and display them in a list
  end


  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end

end
