class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.to_json
  end

  def show
    input = params["id"].to_i
    movie = Movie.find(input)
    render json: movie.to_json
  end

  def create
    movie = Movie.create(
      title: params[:title],
      year: params[:year],
      plot: params[:plot])

    render json: movie.as_json
  end
  def update
    id = params[:id].to_i
    movie = Movie.find(id)
    movie.title = params["title"] || movie.title  
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    movie.save

    render jason: movie.as_json
  end

  def destroy
    id = params[:id].to_i
    movie = Movie.find(id)
    movie.destroy
    render json: {message: "movie destroyed!!"}
    
  end




end
