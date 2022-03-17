class ActorsController < ApplicationController
 
  def index
    @actors = Actor.all
    render :index
  end

  def show
    id = params[:id]
    @actor = Actor.find(id)
    render :show
  end

  def create
    @actor = Actor.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      gender: params[:gender],
      age: params[:age])

    render :show
    
  end

  def update
    id = params[:id].to_i
    @actor = Actor.find(id)
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age
    @actor.save
    render :show
  end

  def destroy
    id = params[:id].to_i
    actor = Actor.find(id)
    actor.destroy
    render json: {message: "actor destroyed!!"}
    
  end

end
