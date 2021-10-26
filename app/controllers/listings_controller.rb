class ListingsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    skip_before_action :authorized, only: [:index]

    def index 
        render json: Listing.all
    end

    def show 
        listings = current_user.listings
        render json: listings
    end

    def create
        listing = current_user.listings.create!(listing_params)
        render json: listing, status: :created
    end

    def update
        listing = Listing.find_by(id:params[:id])
        if listing
            listing.update(listing_params)
            render json: production, status: :accepted
        else 
            render json: {error: 'Listing not found'}, status: :not_found
        end
    end

    private

    def listing_params
        params.permit(:address, :description, :bedrooms, :bathrooms, :parking, :ac, :washer_dryer, :lease, :img_url)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
