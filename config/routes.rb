Rails.application.routes.draw do
  resources :reviews
  resources :klasses
  resources :students
  resources :tutors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
