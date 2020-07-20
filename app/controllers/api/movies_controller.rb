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

  def index 
    @movies = Movie.all
    render 'index.json.jb'
  end 

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save #happypath
      # @movies = Movie.all
      # render 'index.json.jb'
      render 'show.json.jb'
    else
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def update
    #Find
    @movie = Movie.find_by(id: params[:id])
    #Update
      @movie.title = params[:title] || @movie.title
      @movie.year = params[:year] || @movie.year
      @movie.plot = params[:plot] || @movie.plot
      @movie.created_at = params[:created_at] || @movie.created_at
      @movie.updated_at = params[:updated_at] || @movie.updated_at
      @movie.director = params[:director] || @movie.director
      @movie.english = params[:english] || @movie.english
    #Save
    if @movie.save #happypath
    #Render
      render 'show.json.jb'
    else #sadpath
      render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @movies = Movie.find_by(id: params[:id])
    @movies.destroy
    render json: {message: "Successfully destroyed!"}
  end

end
