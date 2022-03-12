class MoviesController < ApplicationController
  def movies_all
    movies = Movie.all
    render json: movies.to_json
  end

  def movie_id
    input = params["id"].to_i
    movie = Movie.find(input)
    render json: movie.to_json
    
  end

  def includes_plot
    input = params[:plot]
    movie = Movie.includes(input)
    render json: {message: "#{movie}"}
  end

  # def multiple_movies
  #   title_1 = params["title_1"]
  #   title_2 = params["title_2"]
  #   movies = Movie.where(title: ["#{title_1}","#{title_2}"])
  #   render json: title_1.to_json
    
  # end
end
