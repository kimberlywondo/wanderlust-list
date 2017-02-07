class TripsController < ApplicationController
	load_and_authorize_resource only: [:update, :destroy]
	
	def index
		@trips = Trip.all
	end
	
	def show
		@user = current_user
		@trip = Trip.find(params[:id])
	end
	
	def new
		@user = current_user
    @trip = Trip.new
	end 
	
	def edit
	end
	
	def create
		@user = current_user
		@trip = @user.trips.build(trip_params)
		
	end
	
	def update
	end
	
	def destroy
	end
	
	private 
	def trip_params
		params.require(:trip).permit(:city, :country)
	end
end
