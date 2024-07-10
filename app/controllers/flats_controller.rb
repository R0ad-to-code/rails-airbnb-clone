class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user

    if @flat.save
      flash[:success] = "Flat created successfully!"
      redirect_to root_path
    else
      render :new
    end
  end

  # def owner_index
  #if the current user is an owner
  #get all the flats of this owner and display them in a list


  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description, :poster_url)
  end

end
