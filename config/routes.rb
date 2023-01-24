Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/tutors/search' ,  to: 'tutors#search'

  get '/reviews/search' ,  to: 'reviews#search'

  get '/klasses/search' ,  to: 'klasses#search'


  resources :reviews
  resources :klasses
  resources :students
  resources :tutors
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
