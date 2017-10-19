class ForecastsController < ApplicationController
	before_action :authorize, :except => [:index]

	def index
		
	end

	def create

		@forecast = Forecast.request(params[:forecast])

	end

end
