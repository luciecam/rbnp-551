class BookingsController < ApplicationController
  def new
		@booking = Booking.new
    @machine = Machine.find(params[:machine_id])
	end

	def create
		@booking = Booking.new(booking_params)
		@booking.user = current_user
		authorize @booking
		if @booking.save
			redirect_to booking_path(@booking)
		else
			render 'new'
		end
	end

	private

	def booking_params
		params.require(:booking).permit(:start_date, :end_date)
	end    
end



