Rails.application.routes.draw do
  get 'maps/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'maps#index'
  resources :maps, only: [:index]
  get '/map_request', to: 'maps#map', as: 'map_request'
end
