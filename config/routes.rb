Rails.application.routes.draw do
  root "sessions#new"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/admin", to: "admin#index"

  resources :users, only: [ :new, :create, :edit, :update, :destroy ]

  resources :tasks
end
