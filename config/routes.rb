Rails.application.routes.draw do
  get '/pokemon', to: 'pokemon#index'
  get '/pokemon/:id', to: 'pokemon#show'
  root to: 'pokemon#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
