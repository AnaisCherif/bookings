class ListingsController < ApplicationController
before_action :set_listing, only: %i[ show update destroy ]

def index
  @listings = Listing.all
end

def show
end

def create
  @listing = Listing.new(params_listing)
  @listing.save
  redirect_to listings_path(@listing)
end

def update
  @listing = Listing.update(params_listing)
  redirect_to listing_path(@listing)
end

def destroy
  @listing.destroy
  redirect_to restaurants_path, status: :see_other
end

private

def params_listing
  params.require(:listing).permit(:num_rooms)
end

def set_listing
  @listing = Listing.find(params[:id])
end

end
