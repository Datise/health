Rails.application.routes.draw do
  resources :checkins
  resources :tasks
  resources :goals
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "checkins#index"
end
