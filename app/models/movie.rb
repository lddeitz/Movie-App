class Movie < ApplicationRecord

  validates :title, presence: true,  length: { minimum: 1 }, uniqueness: true
  validates :year, presence: true, numericality: { greater_than: 1888 }
  validates :plot, presence: true, length: { maximum: 180 }
end
