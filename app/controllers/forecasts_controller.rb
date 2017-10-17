class ForecastsController < ApplicationController
	def index

	end

	def create
		@forecast = Forecast.request(params[:forecast])
	end
end
