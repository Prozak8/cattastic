Rails.application.routes.draw do
  devise_for :users
  root controller: :cats, action: :index do
    member do
      put "like" => "cats#upvote"
      put "unlike" => "cats#downvote"
    end
  end
  resources :categories, only: [:index, :show]
end
