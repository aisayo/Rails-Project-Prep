Rails.application.routes.draw do

  #root route

  root to: 'application#home'

  resources :reviews
  resources :users, except: [:new]
  resources :books


  #signing up
  get '/signup', to: 'users#new'


  #logging in

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
