Rails.application.routes.draw do

  root to: "static_pages#homepage"
  get "/about", to: "static_pages#about"

  resources :admins
  resources :blogs
  

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
