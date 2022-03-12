class ActorsController < ApplicationController
  def actor
    actor = params[:id]
    actor = Actor.find(actor)
    render json:(actor.as_json)
  end
  def all
    actor = Actor.all
    render json:(actor.as_json)
  end


end
