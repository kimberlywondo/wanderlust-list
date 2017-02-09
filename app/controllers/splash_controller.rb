class SplashController < ApplicationController
	def index
		@trips = Trip.all
#		@trips = Trip.pluck(:city).uniq
	end
end
