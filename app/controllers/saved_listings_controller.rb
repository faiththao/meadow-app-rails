class SavedListingsController < ApplicationController
    skip_before_action :authorized, only: :index
    def create
        puts /////////////////////////////////////////////////////////////////////
        listing = Listing.find_by(id: params[:listing_id])
        saved_listing = current_user.saved_listing.create!(listing)
        puts saved_listing
    end

    def index
        saved_listing = SavedListing.find_by(id: params[:id])
        render json: saved_listing
    end

    private 

    def listing_params
        params.permit(:user_id, :listing_id, listing_attributes: [:address, :description, :bedrooms, :bathrooms, :parking, :ac, :washer_dryer, :lease, :img_url])
    end
end
