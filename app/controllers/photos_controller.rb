class PhotosController < ApplicationController
	def index
#		@photos = Photo.all
#		@trip = Trip.find(params[:trip_id])
#   @photo = @trip.photos.find(params[:id])
		@photos = Photo.where(trip_id: @trip.id)
	end
	
	def show
		@trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])
	end
	
	def new
		@trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.new(params[:id])
	end
	
	def create
		@trip = Trip.find(params[:trip_id])
		@photo = @trip.photos.create(photo_params)
		redirect_to trip_path(@trip)
	end
	
	def edit
		@trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])
	end
	
	def update
	 @trip = Trip.find(params[:trip_id])
   @photo = @trip.photos.find(params[:id])
   @photo.update(photo_params)
   redirect_to @trip
	end
	
	def destroy
    @trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])

    @photo.destroy
    redirect_to trip_path(@trip)
  end
	
	private
	def photo_params
		params.require(:photo).permit(:description, :photo_url)
	end
	
end
