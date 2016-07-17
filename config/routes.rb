Rails.application.routes.draw do
  root to: 'home#index'
  resources :one, only: [:index]
  resources :two, only: [:index]
  resources :home, only: [:index]
end
