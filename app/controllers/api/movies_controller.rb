class Api::MoviesController < ApplicationController
  def movie_action
    @movie = Movie.all.limit(8).offset(4)
    render 'movies.json.jb'
  end

  def singlemovie_action
    @singlemovie = Movie.find_by(id: 1)
    render 'singlemovie.json.jb'  
  end

  def take
    @take = Movie.take(2)
    render 'take.json.jb'
  end

  def pure
    @pure = Movie.where("year = 2002").or(Movie.where("year=2019")).or(Movie.where("year=1999"))
    render 'pure.json.jb'
  end


end
