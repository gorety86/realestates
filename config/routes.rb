Rails.application.routes.draw do
  resources :properties
  resources :bookings
  resources :users

  post '/login', to 'session#login'
  delete '/logout', to 'session#logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
