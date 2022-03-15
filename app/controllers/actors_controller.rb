class ActorsController < ApplicationController
 
  def index
    actors = Actor.all
    render json:(actors.as_json)
  end

  def show
    actor = params[:id]
    actor = Actor.find(actor)
    render json:(actor.as_json)
  end

  def create
    actor = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for])

    render json: actor.as_json
    
  end

  def update
    id = params[:id].to_i
    actor = Actor.find(id)
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params["known_for"] || actor.known_for
    actor.save
    render json: actor.as_json
  end

  def destroy
    id = params[:id].to_i
    actor = Actor.find(id)
    actor.destroy
    render json: {message: "actor destroyed!!"}
    
  end

end
