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
    code: "PHL"
  },

  { 
    name: "Salt Lake City International Airport",
    code: "SLC"
  },

  { 
    name: "Denver International Airport",
    code: "DEN"
  },

  { 
    name: "Seattle-Tacoma International Airport",
    code: "SEA"
  }
])

Flight.delete_all

flights = Flight.create!([
  { 
    date: DateTime.new(2022,3,2,10,0,0),
    flight_duration: 7,
    departure_airport: Airport.first,
    arrival_airport: Airport.second
  }
])

