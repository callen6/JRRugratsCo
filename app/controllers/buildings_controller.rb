class BuildingsController < ApplicationController
	def index
		@buildings = Building.all
	end
	def new
		@building = Building.new
	end
	def create
		@building = Building.new(buildings_params)
		if @building.save
			redirect_to '/buildings'
		else
			render action: 'new'
		end
	end
	def destroy
		Building.find(params[:id]).destroy
		redirect_to '/buildings'
	end

	private

	def buildings_params
		params.require(:building).permit(:address, :units)
	end
end
