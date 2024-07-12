class ReviewsController < ApplicationController
  def create
    @flat = Flat.find(params[:flat_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.flat = @flat

    if @review.save
      redirect_to flat_path(@flat), notice: 'Review was successfully created.'
    else
      @booking = Booking.new
      @reviews = @flat.reviews
      render "flats/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
