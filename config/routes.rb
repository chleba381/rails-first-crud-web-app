Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :directors
  resources :movies
  get '/directors/:name', to: 'directors#show', as: 'direector'
  get 'home/index'
  root 'home#index'
  get 'home/stranka1'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
