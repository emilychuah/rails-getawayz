class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  # before_action :find_listing, only: [:new , :create]
  before_action :find_booking, only: %i[show edit update]


  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    authorize @booking
  end

  def new
    # @user = User.find(params[:id])
    @listing = Listing.find(params[:listing_id])
    # @user = User.find(current_user.id)
    @booking = Booking.new
    authorize @booking

  end

  def create
    @listing = Listing.find(params[:listing_id])
    # @user = User.find(current_user.id)
    @booking = Booking.new(booking_params)
    @days = (@booking.check_out_date_utc - @booking.check_in_date_utc)
    @booking.user = current_user
    @booking.listing = @listing
    @booking.total_price = @days.to_i * @listing.price_per_night
    authorize @booking

    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   @booking.update(booking_params)

  #   if @booking.update(booking_params)
  #     redirect_to booking_path(@booking)
  #   else
  #     render :edit
  #   end
  # end

  private

  def booking_params
    params.require(:booking).permit(:number_of_people, :is_active, :total_price, :check_in_date_utc, :check_out_date_utc, :user_id)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  # def find_user
  #   @user = User.find(params[:id])
  # end
  # def find_listing
  #   @listing = Listing.find(params[:id])
  # end
end
