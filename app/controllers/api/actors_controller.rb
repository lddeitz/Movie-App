class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all.order(age: :desc)
    render 'index.json.jb'
  end

  def update
    #Find
    @actors = Actor.find_by(id: params[:id])
    #Update
    @actors.first_name = params[:first_name] || @actors.first_name
    @actors.last_name = params[:last_name] || @actors.last_name
    @actors.known_for = params[:known_for] || @actors.known_for
    @actors.created_at = params[:created_at] || @actors.created_at
    @actors.updated_at = params[:updated_at] || @actors.updated_at
    @actors.gender = params[:gender] || @actors.gender
    @actors.age = params[:age] || @actors.age
    @actors.movie_id = params[:movie_id] || @actors.movie_id 
    #Save
    if @actors.save
    #Render
      render 'show.json.jb' #happypath
    else 
      render json: {errors: @actors.errors.full_messages}, status: :unprocessable_entity #sadpath 
    end 
  end

  def create
    @actors = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if @actors.save
      render 'show.json.jb' #happypath
    else
      render json: {errors: @actors.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def show
    @actors = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def destroy
    @actors = Actor.find_by(id: params[:id])
    @actors.destroy
    render json: {message: "Successfully destroyed."}
  end

end
