Rails.application.routes.draw do
  get "pages/about"
  resources :trainers
  resources :pokemons

  get 'about', to: 'pages#about'
  root to: 'pages#about'

  get 'pokemon_by_type', to: 'pages#pokemon_by_type'

  get "up" => "rails/health#show", as: :rails_health_check

end
