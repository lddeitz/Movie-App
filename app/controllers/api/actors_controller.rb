class Api::ActorsController < ApplicationController
  def actors_action
    @actor = Actor.all #this is where I get tripped up
    render 'actors.json.jb'
  end 
end
