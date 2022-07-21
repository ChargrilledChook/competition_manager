Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"

  resources :posts, only: [:index, :show]
  resources :users, only: [:index, :show]
end
