Rails.application.routes.draw do
  
  devise_for :admins
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  resources :sites

  resources :users

  resources :admin

  root to: 'users#new'
end
