class SplashController < ApplicationController
	before_filter :authenticate_user!, except: [:index]
	def index
		@trips = Trip.all
#		@trips = Trip.pluck(:city).uniq
  	@home_page = true

	end
end
