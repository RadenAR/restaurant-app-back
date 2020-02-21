# frozen_string_literal: true

class RestaurantsController < OpenReadController
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # GET /restaurants/1
  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = current_user.restaurants.build(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy

    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = current_user.restaurants.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:name,
                                       :address,
                                       :rating, :cuisine_type, :healthy,
                                       :user_id)
  end
end
