class Booking < ApplicationRecord
  has_many :passengers, class_name: "Passenger"
  belongs_to :flight, class_name: "Flgiht"
end
