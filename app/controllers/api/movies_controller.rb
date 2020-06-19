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
    @movies = Movie.new(
      id: params[:id],
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
      director: params[:director],
      english: params[:english]
    )
    if @movies.save #happypath
      render 'show.html.erb'
    else
      render json: {errors: @movies.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def destroy
    @movies = Movie.find_by(id: params[:id])
    @movies.destroy
    render json: {message: "Successfully destroyed!"}
  end

  def index 
    @movies = Movie.where(english: true)
    render 'index.json.jb'
  end 

  def show
    @movies = Movie.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def update
    #Find
    @movies = Movie.find_by(id: params[:id])
    #Update
      @movies.title = params[:title] || @movies.title
      @movies.year = params[:year] || @movies.year
      @movies.plot = params[:plot] || @movies.plot
      @movies.created_at = params[:created_at] || @movies.created_at
      @movies.updated_at = params[:updated_at] || @movies.updated_at
      @movies.director = params[:director] || @movies.director
      @movies.english = params[:english] || @movies.english
    #Save
    if @movies.save #happypath
    #Render
      render 'show.html.erb'
    else #sadpath
      render json: {errors: @movies.errors.full_messages}, status: :unprocessable_entity
    end 
  end

end
