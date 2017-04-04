Rails.application.routes.draw do
  devise_for :users

  resources :pics do
    member do
      put "like", to: "pics#upvote"
    end

      resources :comments
        member do
          put "comment", to: "pics#upvote"
        end
  end
  		
  root "pics#index"
end
