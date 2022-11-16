Rails.application.routes.draw do
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # get "restaurants/:id/reviews/new" to: "reviews#new"
  # post "restaurants/:id/reviews" to: "reviews#create"
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [ :new, :create ]
  end
end
