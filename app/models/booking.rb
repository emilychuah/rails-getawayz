class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :check_in_date_utc, :check_out_date_utc, :number_of_people, :total_price, presence: true
  validates :total_price, numericality: { only_integer: true }
  validates :check_out_date_utc, comparison: { greater_than: :check_in_date_utc }
  validate :check_in_date_cannot_be_in_the_past

  # Remember to test this!
  def check_in_date_cannot_be_in_the_past
    if check_in_date_utc.present? && check_in_date_utc < Date.today
      errors.add(:check_in_date_utc, "can't be in the past")
    end
  end
end
