class MachinesController < ApplicationController
before_action 
	def index
		@machines = policy_scope(Machine).order(created_at: :desc)
	end

	def show
		@machine = Machine.find(params[:id])
		authorize @machine
	end

	def new
		@machine = Machine.new
		authorize @machine
	end

	def create
		@machine = Machine.new(machine_params)
		@machine.user = current_user
		authorize @machine
		if @machine.save
			redirect_to machine_path(@machine)
		else
			render :new
		end
	end

	def edit
		@machine = Machine.find(params[:id])
		authorize @machine
	end

	def update
		@machine = Machine.find(params[:id])
		@machine.update(machine_params)
		authorize @machine
		if @machine.save
		  redirect_to machine_path(@machine)
		else
		  render :edit
		end
	end

	private

	def machine_params
		params.require(:machine).permit(:name, :description, :specifications, :price, :address, :condition)
	end    
end

