Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :flats, only: [:show, :new, :create, :destroy] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:create]
  end

  resources :bookings, only: [:update, :destroy]

  get "bookings", to: "bookings#index", as: "user_bookings"
  get "flats", to: "flats#owner_index", as: "owner_flats"
  # post "create" only: [:create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
