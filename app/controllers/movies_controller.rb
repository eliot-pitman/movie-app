class MoviesController < ApplicationController
  # before_action :authenticate_user && :authenticate_admin, except: [:index, :show]
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
    @movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"])
    
    if @movie.save
      render :show
    else 
      render json: {errors: @movie.errors.full_messages}, status: 422
    end
  end

  def update
    id = params[:id].to_i
    @movie = Movie.find(id)
    @movie.title = params["title"] || @movie.title  
    @movie.year = params["year"] || @movie.year
    @movie.plot = params["plot"] || @movie.plot
    @movie.director = params["director"] || @movie.director
    @movie.english = params["english"] || @movie.english
    
    if @movie.save
      render :show
    else 
      render json: {errors: @movie.errors.full_messages}, status: 422
    end

  end

  def destroy
    id = params[:id].to_i
    movie = Movie.find(id)
    movie.destroy
    render json: {message: "movie destroyed!!"}
    
  end
end
