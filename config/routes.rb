Rails.application.routes.draw do
 root 'forecasts#index'

 get '/forecast/create' => 'forecasts#create'
 get 'locations/search/:query' => 'locations#search'
end
