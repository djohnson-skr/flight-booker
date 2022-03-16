class Booking < ApplicationRecord
  has_many :passengers, class_name: "Passenger"
  belongs_to :flight, class_name: "Flight"

  accepts_nested_attributes_for :passengers, :allow_destroy => true
  # creates a passengers_atrributes method on Booking, to be used when creating a booking
  validates_associated :passengers
end
