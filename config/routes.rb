Rails.application.routes.draw do
  devise_for :users

  resources :currencies
  resources :trips
  resources :countries
  resources :users

  root to: 'visitors#index'
end
