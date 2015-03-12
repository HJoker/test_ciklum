Rails.application.routes.draw do
  resources :currencies
  resources :trips
  resources :countries
  resources :users

  root to: 'visitors#index'
  devise_for :users
end
