# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.delete_all
airports = Airport.create!([
  { 
    name: "Philadelphia International Airport",
    code: "PHL",
    location: "Philadelphia"
  },

  { 
    name: "Salt Lake City International Airport",
    code: "SLC",
    location: "Salt Lake City"
  },

  { 
    name: "Denver International Airport",
    code: "DEN",
    location: "Denver"
  },

  { 
    name: "Seattle-Tacoma International Airport",
    code: "SEA",
    location: "Seattle"
  },

  { 
    name: "Newark Liberty International Airport",
    code: "EWR",
    location: "Newark"
  },

  { 
    name: "Munich International Airport",
    code: "MUC",
    location: "Munich"
  },

  { 
    name: "Stockholm Arlanda Airport",
    code: "ARN",
    location: "Stockholm"
  }

])

Flight.delete_all

dates = (Date.today..(Date.today + 1.month)).to_a
airports = Airport.all

airports.each do |arrival|
  airports.each do |departure|
    next if arrival.id == departure.id

    dates.each do |d|
      rand(1..3).times do
        Flight.create!(
          date: DateTime.new(d.year, d.month, d.day, rand(1..23), rand(1..59)),
          departure_airport: departure,
          arrival_airport: arrival,
          flight_duration: 7
        )
      end
    end
  end
end