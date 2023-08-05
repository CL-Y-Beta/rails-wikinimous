Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "articles#index"

  # Read All
  get "articles", to: "articles#index"

  # Create
  get "articles/new", to: "articles#new", as: :new_article

  post "articles", to: "articles#create"

  get "articles/:id", to: "articles#show", as: :article

  get "articles/:id/edit", to: "articles#edit", as: :edit

  delete "articles/:id", to: "articles#destroy", as: :delete

  patch "articles/:id", to: "articles#update"
end
