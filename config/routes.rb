Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :sites

  resources :users

  resources :admin

  root to: 'users#index'
end
