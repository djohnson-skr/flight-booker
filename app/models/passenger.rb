class Passenger < ApplicationRecord
  has_one :booking class_name: "Booking"
end
