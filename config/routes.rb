Rails.application.routes.draw do

  root to: "static_pages#homepage"

  resources :admins do
    resources :blogs
  end

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

end
