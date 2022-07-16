Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "cats#index"

  # Omniauth
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/login', to: 'sessions#new'

  resources :cats
  get '/profile' => 'profile#show'
end
