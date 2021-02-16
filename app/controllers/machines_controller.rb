class MachinesController < ApplicationController
before_action 
	def index
		@machines = Machine.all
	end

	def show
		@machine = Machine.find(params[:id])
	end

	def new
		@machine = Machine.new
	end

	def create
		@machine = Machine.new(machine_params)
		@machine.user = current_user
		autorize @machine
		if @machine.save
			redirect_to machine_path(@machine)
		else
			render 'new'
		end
	end

	private

	def machine_params
		params.require(:machine).permit(:name, :description, :specifications, :price, :address, :condition)
	end    
end

