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

  def owner_index
    @user = current_user
    @flats = current_user.flats
  end


  def show
    @flat = Flat.find(params[:id])
    @reviews = @flat.reviews
    @booking = Booking.new
    if @flat.geocoded?
      @markers = [{
        lat: @flat.latitude,
        lng: @flat.longitude
      }
      ]
    end
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description, :poster_url)
  end

end
