Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: :omniauth_callbacks }
  root controller: :cats, action: :index
  resources :categories, only: [:index, :show]
end