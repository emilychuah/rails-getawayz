class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show owner]
  before_action :find_listing, only: [:show, :edit, :update, :owner]

  def index
    @listings = policy_scope(Listing).order(created_at: :desc)
    # @listings = Listing.all

    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude,
        info_window: render_to_string(partial: "info_window", locals: { listing: listing }),
        image_url: helpers.asset_url("map-marker.png")
      }
    end
  end

  def show
    authorize @listing
  end

  def new
    @listing = Listing.new
    authorize @listing
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    authorize @listing

    if @listing.save!
      redirect_to listings_path
    else
      render :new
    end
  end

  def edit
    authorize @listing
  end

  def update
    @listing.update(listing_params)
    authorize @listing

    if @listing.update(listing_params)
      redirect_to listing_path(@listing)
    else
      render :edit
    end
  end

  def owner
    @owner = @listing.user
    authorize @owner
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :address, :description, :price_per_night, :listing_capacity, :is_active, photos: [])
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end
end
