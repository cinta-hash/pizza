class RestaurantsController < ApplicationController
    def index
        render json: Restaurant.all, except: [:pizzas], status: :ok
    end

    def show 
        restaurant = find_restaurant
        render json: restaurant, status: :ok
    end

    def destroy
        restaurant = find_restaurant
        restaurant.destroy
        head :no_content
    end

    private
    def find_restaurant
        Restaurant.find(params[:id])
    end
      

    def render_not_found_response
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end

