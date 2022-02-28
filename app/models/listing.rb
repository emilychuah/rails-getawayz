class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :address, :price_per_night, :description, :listing_capacity, presence: true
  validates :price_per_night, numericality: { only_integer: true }
end
