class Movie < ApplicationRecord
  validates_length_of :year, is: 4
  validates :title, presence: true
end
