Rails.application.routes.draw do
  resources :saved_listings, only: [:show]
  resources :listings, only: [:index, :create, :update]
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "auth#create"
  get '/logged_in', to: 'application#logged_in?'
  post "/auto_login", to: "auth#auto_login"
end
