class MoviesController < ApplicationController
  def movies_all
    movies = Movie.all
    render json: movies.to_json
  end

  def movie_id
    input = params["id"].to_i
    movie = Movie.find_by(id:input)
    render json: movie.to_json
    
  end
end
