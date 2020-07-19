class Api::ActorsController < ApplicationController

  # before_action :authenticate_admin, except: [:show, :index]

  def index
    @actors = Actor.all.order(age: :desc)
    render 'index.json.jb'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      created_at: params[:created_at],
      updated_at: params[:updated_at],
      gender: params[:gender],
      age: params[:age],
      movie_id: params[:movie_id]
    )
    if @actor.save
      render 'show.json.jb' #happypath
    else
      render json: {errors: @actors.errors.full_messages}, status: :unprocessable_entity
    end 
  end

  def update
    @actor = Actor.find(params[:id])
    #Update
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.created_at = params[:created_at] || @actor.created_at
    @actor.updated_at = params[:updated_at] || @actor.updated_at
    @actor.gender = params[:gender] || @actor.gender
    @actor.age = params[:age] || @actor.age
    @actor.movie_id = params[:movie_id] || @actor.movie_id 
    #Save
    if @actor.save
    #Render
      render 'show.json.jb' #happypath
    else 
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity #sadpath 
    end 
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def destroy
    @actors = Actor.find_by(id: params[:id])
    @actors.destroy
    render json: {message: "Successfully destroyed."}
  end

end
