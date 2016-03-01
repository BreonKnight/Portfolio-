Rails.application.routes.draw do
  resources :admins do
    resources :blogs
  end
end
