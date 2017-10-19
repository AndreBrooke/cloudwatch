class Forecast < ApplicationRecord
	extend ActiveModel::Naming
 	

	attr_accessor :location

	def initialize(location, forecast_io_object)
		@forecast_io_object = forecast_io_object
		self.location = location
	end

	def self.request(attributes)
		geo = ::Geocoder.search(attributes[:location]).first
		self.new attributes[:location], ForecastIO.forecast(geo.latitude, geo.longitude,  params: { units: 'si' })
	end

	def daily_summary
		@forecast_io_object.daily.summary
	end

	def daily_icon
		@forecast_io_object.daily.daily_icon
	end

	def daily
		
		@forecast_io_object.daily.data
	end

	def currently
		@forecast_io_object.currently
	end
end
