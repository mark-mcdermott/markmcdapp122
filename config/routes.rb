Rails.application.routes.draw do

  resources :users, only: :create

  root 'sessions#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  get '/signup', to: 'users#new'

end
