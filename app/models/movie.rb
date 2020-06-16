class Movie < ApplicationRecord
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  validates :title, presence: true,  length: { minimum: 1 }, uniqueness: true
  validates :year, presence: true, numericality: { greater_than: 1888 }
  validates :plot, presence: true, length: { maximum: 180 }

  has_many :actors
end
