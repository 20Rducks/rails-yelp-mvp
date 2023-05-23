class ReviewsController < ApplicationController

  # Find restaurant_id in its params
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  # Access to restaurant, Create review, Restaurant Review
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    # If saved redirect to restaurant page, if not render the show page
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  # Create method for review parameters
  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
