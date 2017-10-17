require 'rails_helper'

RSpec.describe ForecastsController, type: :controller do

describe "GET #index" do
    
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end
  describe "GET #create" do

  	forecast = build(:forecast)

    it 'responds with json' do

      get 'create'
      expect(dbl).to respond_with_content_type(:json)
    end
    it 'assigns a populated forecast object' do
      get 'create', {forecast: {location: 'Kuala Lumpur'}}
      expect(assigns[:forecast]).to be_a(Forecast)
    end

  end
end
