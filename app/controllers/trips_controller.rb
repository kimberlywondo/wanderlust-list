class TripsController < ApplicationController
	load_and_authorize_resource only: [:edit, :update, :destroy]
	
	def index
		@user = current_user
		@trips = current_user.trips
		
#		Trip.pluck(:city).uniq-->
	end
	
	def explore
		@trips = Trip.all
		@photos = Photo.all
#		@user = @trip.user
	end
	
	def show
		@user = current_user
		@trip = Trip.find(params[:id])
#		@photos = Photo.where(trip_id: @trip.id)
	end
	
	def new
#		@user = current_user
#    @trip = Trip.new
		
		@trip = current_user.trips.build
		@photo = @trip.photos.build
#		@photo = @trip.photos.build(trip_params)
#		@photo.trip_id = @trip.id
#		3.times { @trip.photos.build}
	end 
	
	def create
#		@user = current_user
#		@trip = @user.trips.build(trip_params)
		@trip = current_user.trips.build(trip_params)
#		@trip.username = current_user.username
#		@trip.user_id = current_user.id
		if @trip.save
			params[:photos]['image'].each do |a|
          @photo = @trip.photos.create!(:image => a)
       end
			 # to handle multiple images upload on create
#      if params[:images]
#        params[:images].each { |image|
#          @trip.photos.create(image: image)
#        }
#      end
      redirect_to trips_url
    else
      render 'new'
    end
	end
	
	def edit
		@trip = Trip.find(params[:id])
	end
	
	def update
		@trip = Trip.find(params[:id])
		@trip.update(trip_params)
		redirect_to trips_path
	end
	
	def destroy
		@trip = Trip.find(params[:id])
		@trip.destroy
		redirect_to trips_path
	end
	
	private 
	def trip_params
		params.require(:trip).permit(:user_id, :city, :country, photos_attributes: [:id, :photo_url, :description, :image])
	end
end
