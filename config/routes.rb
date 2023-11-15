Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  
  resources :restaurants do # localhost:3000/restaurants/2/reviews/new
    resources :reviews, only: [:new, :create]
    collection do
      get :top
    end
  end
  resources :reviews, only: [:edit, :update, :destroy] # localhost:3000/reviews/2/edit
end
