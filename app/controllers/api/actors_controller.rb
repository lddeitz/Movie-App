class Api::ActorsController < ApplicationController
  # def actors_action
  #   @actor = Actor.all 
  #   render 'actors.json.jb'
  # end 

  # def single_actor
  #   @singleactor = Actor.find_by(first_name: params[:first_name])
  #   render 'single_actor.json.jb'
  # end 

  def index
    @actors = Actor.all
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
    #Save
    @actors.save
    #Render
    render 'show.json.jb'
  end

  def create
    @actors = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      created_at: params[:created_at],
      updated_at: params[:updated_at]
    )
    @actors.save
    render 'show.json.jb'
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
