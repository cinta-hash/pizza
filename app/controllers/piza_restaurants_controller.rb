class PizaRestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    wrap_parameters format: []
    def create
        piza_restaurant = RestaurantPizza.create!(piza_restaurant_params)
        piza = Piza.find_by(id: params[:piza_id])
        render json: piza, status: :created
    end

    private

    def piza_restaurant_params
        params.permit(:price, :piza_id, :restaurant_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
