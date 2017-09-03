Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  resources :chatrooms do
    resources :messages
  end
  root to: 'chatrooms#index'
end
