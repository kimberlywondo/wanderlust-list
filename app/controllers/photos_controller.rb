class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end
	
	def create
		@trip = Trip.find(params[:trip_id])
		@photo = @trip.photos.create(photo_params)
		
		redirect_to trip_path(@trip)
	end
	
	private
	def photo_params
		params.require(:photo).permit(:description, :photo_url)
	end
	
end
