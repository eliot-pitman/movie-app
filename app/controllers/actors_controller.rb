class ActorsController < ApplicationController
  def actor
    actor = Actor.find_by(id:3)
    render json:(actor.as_json)
  end
  def all
    actor = Actor.all
    render json:(actor.as_json)
  end

end
