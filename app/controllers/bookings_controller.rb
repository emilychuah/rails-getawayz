class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :find_booking, only: %i[show edit update]

  # def index
  #   @bookings = Booking.all
  #   @bookings = policy_scope(booking).order(created_at: :desc)
  # end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    if @booking.save
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
    params.require(:booking).permit(:number_of_people, :is_active, :total_price, :check_in_date_utc, :check_out_date_utc)
  end

  def find_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end
