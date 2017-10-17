Rails.application.routes.draw do
 root 'forecasts#index'

 get '/forecast/create' => 'forecasts#create'
 get 'locations/search/:query' => 'locations#search'


 get '/login' => 'sessions#new'
 post '/login' => 'sessions#create'
 get '/logout' => 'sessions#destroy'

 get '/signup' => 'user#new'
 post '/users' => 'user#create' 
 get '/users/:id' => 'user#show', as: "user"
end
