class ForecastsController < ApplicationController
	def new

	end

	def create
	
		@forecast = Forecast.request(params[:forecast])
		
	end
end
