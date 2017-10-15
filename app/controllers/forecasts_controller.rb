class ForecastsController < ApplicationController
	def new

	end

	def create
		store_location_for :user, request.url
		@forecast = Forecast.request(params[:forecast])
		debug_me = true
	end
end
