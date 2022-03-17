class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def show
    input = params["id"].to_i
    movie = Movie.find(input)
    render json: movie.to_json
  end

  def create
    @movie = Movie.create(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"])

    render :show
  end

  def update
    id = params[:id].to_i
    @movie = Movie.find(id)
    @movie.title = params["title"] || @movie.title  
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    @movie.save

    render :show
  end

  def destroy
    id = params[:id].to_i
    movie = Movie.find(id)
    movie.destroy
    render json: {message: "movie destroyed!!"}
    
  end




end
