Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :movies do
    member do
      put "like" => "movies#upvote"
      put "unlike" => "movies#downvote"
    end
  end

end
