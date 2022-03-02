class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :check_in_date_utc, :check_out_date_utc, :number_of_people, :total_price, presence: true
  validates_date :check_in_date_utc, on_or_after: lambda { Date.current }
  validates_date :check_out_date_utc, on_or_after: lambda { :check_in_date_utc }
  validate :check_in_date_cannot_be_in_the_past

  def check_in_date_cannot_be_in_the_past
    if check_in_date_utc.present? && check_in_date_utc < Date.today
      errors.add(:check_in_date_utc, "can't be in the past")
    end
  end
end
