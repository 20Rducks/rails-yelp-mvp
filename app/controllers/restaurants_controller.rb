class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  # Find restaurant by ID, Create @review and pass the param[id] as restaurant ID in params hash
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(restaurant_id: params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
