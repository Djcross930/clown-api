class BookingsController < ApplicationController
  def index
    bookings = Booking.all
    render json: bookings.as_json
  end

  def show
    booking = Booking.find_by(id: params[:id])
    render json: booking.as_json
  end

  def create
    booking = Booking.new
    booking.user_id = params[:user_id]
    booking.clown_id = params[:clown_id]
    booking.save
    render json: booking
  end
end
