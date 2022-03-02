class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_listing, only: [:show, :edit, :update]

  def index
    @listings = policy_scope(Listing).order(created_at: :desc)
    @listings = Listing.all

    @markers = @listings.geocoded.map do |listing|
      {
        lat: listing.latitude,
        lng: listing.longitude
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
    authorize @listing

    if @listing.save
      redirect_to listing_path(@listing)
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

  private

  def listing_params
    params.require(:listing).permit(:title, :address, :description, :price_per_night, :listing_capacity, :is_active)
  end

  def find_listing
    @listing = Listing.find(params[:id])
  end
end
