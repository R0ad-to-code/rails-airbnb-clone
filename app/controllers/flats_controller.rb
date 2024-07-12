class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_flat, only: [:show]

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
      current_user.update_attribute(:owner?, true) if current_user.owner? == false
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
    @review = Review.new

    if @flat.geocoded?
      @markers = [{
        lat: @flat.latitude,
        lng: @flat.longitude
      }]
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description, :poster_url)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
