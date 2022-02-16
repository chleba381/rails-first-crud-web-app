Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :directors
  resources :movies do 
  resources :ratings
  end

  get '/directors/:name', to: 'directors#show', as: 'direector'
  get 'home/index'
  root 'home#index'
  get 'home/stranka1'
end
