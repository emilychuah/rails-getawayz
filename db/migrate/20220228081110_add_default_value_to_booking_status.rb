class AddDefaultValueToBookingStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :booking_status, :boolean, default: false
  end
end
