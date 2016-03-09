Rails.application.routes.draw do

  root to: "static_pages#homepage"
  get "/about", to: "static_pages#about"
  get "/portfolio", to: "static_pages#portfolio"
  get "/blog", to: "admins#index"
  get	"/blog/:id", to: "blogs#show"
  get	"/blog/:id/edit", to: "blogs#edit"
  patch "/blog/:id/", to: "blogs#update", as: "patch"


  resources :admins
  resources :blogs

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
