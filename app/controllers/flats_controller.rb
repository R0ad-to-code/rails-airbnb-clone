class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_flat, only: [:show, :create_review]

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

  def create_review
    raise
    @review = @flat.reviews.new(review_params)
    @review.user = current_user
    raise

    if @review.save
      redirect_to @flat, notice: 'Review was successfully created.'
    else
      @reviews = @flat.reviews
      render :show
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

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
