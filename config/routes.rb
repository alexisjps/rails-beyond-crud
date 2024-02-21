Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :restaurants do # localhost3000/restaurants/
    collection do # localhost3000/restaurants/top
      # verb path
      get 'top'
    end
    resources :reviews, only: [:new, :create] # localhost3000/restaurants/10/reviews/new
  end


end
