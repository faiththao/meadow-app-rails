Rails.application.routes.draw do
  resources :listings, only: [:index, :show, :create, :update]
  # resources :saved_listings, only: [:index]
  # resources :users, only: [:show, :create]
  # get "my_listings" to: "listings#show"
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
  get '/logged_in', to: 'application#logged_in?'
  post "/auto_login", to: "auth#auto_login"
end
