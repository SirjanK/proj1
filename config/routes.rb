Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  get 'pokemon/new', :to => 'pokemon#new'
  patch 'capture', :to => 'pokemon#capture'
  patch 'damage', :to => 'pokemon#damage'
  post 'create', :to => 'pokemon#create'
end
