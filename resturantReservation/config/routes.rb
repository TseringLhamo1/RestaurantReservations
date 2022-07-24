Rails.application.routes.draw do
  get 'home/index'
  resources :customers
  root "home#index"
  end
