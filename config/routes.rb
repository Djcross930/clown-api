Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  get "/bookings" => "bookings#index"
  get "/bookings/:id" => "bookings#show"
  post "/bookings" => "bookings#create"

  get "/clowns" => "clowns#index"
  get "/clowns/:id" => "clowns#show"

end
