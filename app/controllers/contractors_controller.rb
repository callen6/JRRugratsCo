class ContractorsController < ApplicationController
	def index
		@contractors = Contractor.all
	end
	def new
		@contractor = Contractor.new
	end
	def create
		@contractor = Contractor.new(contractors_params)
		if @contractor.save
			redirect_to '/contractors'
		else
			render action: 'new'
		end
	end
	def destroy
		Contractor.find(params[:id]).destroy
		redirect_to '/contractors'
	end

	private

	def contractors_params
		params.require(:contractor).permit(:full_name, :phone_number, :email)
	end
end
