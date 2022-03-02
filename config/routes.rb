Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  resources :listings, except: :destroy do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
