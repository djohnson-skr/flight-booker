class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |u| [u.name, u.id] }
    # after the search button is pressed
    unless params[:departure_date].nil?
      @selected_day = Date.strptime(params[:departure_date], "%Y-%m-%d")
      @available_flights = Flight.where(departure_airport: params[:departure_airport_id],
                                        arrival_airport: params[:arrival_airport_id],
                                        date: @selected_day.all_day)

    end                            
  end
end
