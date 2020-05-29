class Api::MoviesController < ApplicationController
  def movie_action
    @movie = Movie.all
    render 'movies.json.jb'
  end

  def singlemovie_action
    @singlemovie = Movie.find_by(id: 1)
    render 'singlemovie.json.jb'  
  end
end
