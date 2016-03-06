Rails.application.routes.draw do

  root to: "static_pages#homepage"
  get "/about", to: "static_pages#about"
  get "/portfolio", to: "static_pages#portfolio"
  get "/blog", to: "admins#index"
  
  resources :admins
  resources :blogs, except: [:show, :index]

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
