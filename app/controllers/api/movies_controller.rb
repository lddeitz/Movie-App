class Api::MoviesController < ApplicationController
  # def movie_action
  #   @movie = Movie.all.limit(8).offset(4)
  #   render 'movies.json.jb'
  # end

  # def singlemovie_action
  #   @singlemovie = Movie.find_by(id: 1)
  #   render 'singlemovie.json.jb'  
  # end

  # def take
  #   @take = Movie.take(2)
  #   render 'take.json.jb'
  # end

  # def pure
  #   @pure = Movie.where("year = 2002").or(Movie.where("year=2019")).or(Movie.where("year=1999"))
  #   render 'pure.json.jb'
  # end

  def create
    @movie = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    @movie.save
    render 'show.json.jb'
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Successfully destroyed!"}
  end

  def index #not done with this one, SHOW, or PATCH yet
    @movie = Movie.all 
    render 'show.json.jb'
  end 

end
