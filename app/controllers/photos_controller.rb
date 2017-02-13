#before_action :set_trip

class PhotosController < ApplicationController
	def index
		@trip = Trip.find(params[:trip_id])
    @photos = @trip.photos.all
		
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
		@photo = @trip.photos.build(photo_params) 
#		@photo.trip_id = @trip.id
		redirect_to trip_path(@trip)
	end
	
	def edit
		@trip = Trip.find(params[:trip_id])
    @photo = @trip.photos.find(params[:id])
#		@photos = Photo.where(trip_id: @trip.id)
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
	
#	def set_trip  
#  	@trip = Trip.find(params[:trip_id])
#	end  
	
end
