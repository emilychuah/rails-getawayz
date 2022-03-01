class ChangeBookingStatusToIsActive < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :booking_status, :is_active
  end
end
