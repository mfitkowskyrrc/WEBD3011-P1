Rails.application.routes.draw do
  get "pages/about"
  resources :trainers
  resources :pokemons

  get 'about', to: 'pages#about'
  root to: 'pages#about'

  get "up" => "rails/health#show", as: :rails_health_check

end
