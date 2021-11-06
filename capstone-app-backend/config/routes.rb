Rails.application.routes.draw do
  get "/cards" => "card#index"
  get "/cards/:id" => "card#show"

  get "fortunes/:id" => "fortunes#show"

  post "/users" => "users#create"
  get "users/:id" => "users#show"
  patch "users/:id" => "users#update"
  post "/sessions" => "sessions#create"
end
