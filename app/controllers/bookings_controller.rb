class BookingsController < ApplicationController
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight])
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end

  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes:[:name, :email])
    end

end
