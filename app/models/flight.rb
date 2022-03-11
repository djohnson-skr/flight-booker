class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  has_many :bookings, foreign_key: :flight_id, class_name: "Booking"
  has_many :passengers, through: :bookings
end
