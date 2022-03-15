Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actors" => "actors#index"
  get "/actors/:id" => "actors#show"
  
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"

  post "/actors" => "actors#create"
  post "/movies" => "movies#create"

  patch "/actors/:id" => "actors#update"
  patch "/movies/:id" => "movies#update"

  delete "/actors/:id" => "actors#destroy"
  delete "/movies/:id" => "movies#destroy"

end
