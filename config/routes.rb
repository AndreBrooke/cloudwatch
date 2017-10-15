Rails.application.routes.draw do
 root 'forecasts#new'
 resource :forecast, :only => [:new]
 get '/forecast/create' => 'forecasts#create'
 get 'locations/search/:query' => 'locations#search'
end
