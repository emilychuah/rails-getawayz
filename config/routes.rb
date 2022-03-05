Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  resources :listings, except: :destroy do
    resources :bookings, only: [:new, :create]
    member do
      get :owner
    end
  end
  resources :bookings, only: [:show, :index]
  resources :users, only: :index do
    member do
      get :listings
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
