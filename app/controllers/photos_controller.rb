class PhotosController < ApplicationController
	def index
		@trip = Trip.find(params[:trip_id])
#		@photos = Photo.all
    @photos = @trip.photos.all
#		@photos = Photo.where(trip_id: @trip.id)
	end
	
	def show
#		@photo = Photo.find(params[:id])
		@trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])
	end
	
	def new
#		@photo = Photo.new
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
   redirect_to trip_path(@trip)
#redirect_to @trip
	end
	
	def destroy
    @trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])

    @photo.destroy
    redirect_to trip_path(@trip)
  end
	
	private
	def photo_params
		params.require(:photo).permit(:description, :photo_url, :image)
	end
	
end
