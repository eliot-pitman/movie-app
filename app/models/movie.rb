class Movie < ApplicationRecord
  # validates_length_of :year, is: 4
  # validates :title, presence: true
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    movie_genres.map do |movie_genre|
      Genre.find(movie_genre.genre_id).name
    end
  end
end 