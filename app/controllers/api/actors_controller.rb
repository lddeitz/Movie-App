class Api::ActorsController < ApplicationController
  def actors_action
    @actor = Actor.all #this is where I get tripped up
    render 'actors.json.jb'
  end 

  def single_actor
    @singleactor = Actor.find_by(first_name: params[:first_name])
    render 'single_actor.json.jb'
  end 
end
