class BookingsController < ApplicationController

	def index
		@bookings = policy_scope(Booking).order(created_at: :desc).where(user_id: current_user)
	end


	def create
		@booking = Booking.new(booking_params)
		@machine = Machine.find(params[:machine_id])
		@booking.machine = @machine
		@booking.user = current_user
		@booking.price = (@booking.end_date - @booking.start_date + 1) * @machine.price
		authorize @booking
		if @booking.save
			redirect_to bookings_path
		else
			render 'new'
		end
	end

	def show
		# raise
		@booking = Booking.find(params[:id])
		@machine = @booking.machine
		authorize @booking
	end

	private

	def booking_params
		params.require(:booking).permit(:start_date,:end_date)
	end
end



