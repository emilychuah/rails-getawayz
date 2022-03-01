Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  resources :listings, except: :destroy do
    resources :bookings, only: [:show, :new, :create]
  end
  resources :users, only: [:show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
