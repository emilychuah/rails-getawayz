class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :number_of_people
      t.boolean :booking_status
      t.integer :total_price
      t.date :check_in_date_utc
      t.date :check_out_date_utc
      t.references :user, null: false, foreign_key: true
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
