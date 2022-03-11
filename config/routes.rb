Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/actor" => "actors#actor"
  get "/actors_all" => "actors#all"
  get "/movies_all" => "movies#movies_all"
  get "/specific_movie/:id" => "movies#movie_id"
end
