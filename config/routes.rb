Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    member do
      put "like" =>"articles#upvote"
      put "unlike" =>"movies#downvote"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
