Rails.application.routes.draw do
  get 'game/index'
  get 'game/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'static_pages#home'

  resources :posts, only: %i[index show]
  resources :users, only: %i[index show]
  resources :games, only: %i[index show]

  get 'console', to: 'static_pages#console'
end
