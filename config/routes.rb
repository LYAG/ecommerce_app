Rails.application.routes.draw do
  root 'products#index'

  resources :products do
    resources :orders, only: [:create]
  end

  resources :orders, only: [:create]

  get '/register', to: 'registrations#new'
  post '/register', to: 'registrations#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
