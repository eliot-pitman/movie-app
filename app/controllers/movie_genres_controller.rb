class MovieGenresController < ApplicationController
  def create 
    @moviegenre = MovieGenre.new(
      movie_id: params[:genre_id],
      genre_id: params[:genre_id]
    )
    @moviegenre.save
    render json: @moviegenre.as_json

  end
end

