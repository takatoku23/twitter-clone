Rails.application.routes.draw do
  get 'users/new', to:'users#new'
  root 'staticpages#home'
  get '/about', to:'staticpages#about'
  get '/login', to:'sessions#new'
  delete '/logout', to:'sessions#destroy'
  
  
  resources :users
  resources :sessions, only: :create
  resources :microposts, only: :create
  resources :relationships, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
