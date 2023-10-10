Rails.application.routes.draw do

  get "/users/:id" => "users#show", as: :user
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "photos#index"

  get "/:username" => "users#show", as: :user
end
