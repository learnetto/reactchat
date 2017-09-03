Rails.application.routes.draw do
  devise_for :users
  resources :chatrooms
  root to: 'chatrooms#index'
end
