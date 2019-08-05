Rails.application.routes.draw do
  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end
  devise_for :users
  match ':controller(/:action(/:id))', :via => :get
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
