Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/books" => "books#index"
    post "/books" => "books#create"
    get "/books/:id" => "books#show"
    patch "/books/:id" => "books#update"
    delete "/books/:id" => "books#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
