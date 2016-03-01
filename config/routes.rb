Rails.application.routes.draw do

  resources :admins do
    resources :blogs
  end

  get "/login", to: "sessions#new"
end
