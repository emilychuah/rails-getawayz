class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  validates :check_in_date, :check_out_date, :number_of_people, :total_price, presence: true
  validates :total_price, numericality: { only_integer: true }
  validates :check_out_date, comparison: { greater_than: :check_in_date }
  validate :check_in_date_cannot_be_in_the_past

  # Remember to test this!
  def check_in_date_cannot_be_in_the_past
    if check_in_date.present? && check_in_date < Date.today
      errors.add(:check_in_date, "can't be in the past")
    end
  end
end
