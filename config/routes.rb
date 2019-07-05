Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/guests/:id", to: "guests#show"
  get "/episodes/:id", to: "episodes#show", as: "episode"
  get "/appearances/new", to: "appearances#new"
  post "/appearances/new", to: "appearances#create" 
  resources :guests, only: [:index]
  resources :episodes, only: [:index]

end
