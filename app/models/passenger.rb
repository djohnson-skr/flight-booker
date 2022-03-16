class Passenger < ApplicationRecord
  has_one :booking, class_name: "Booking"

  validates :name, presence: true
  validates :email, presence: true
end
