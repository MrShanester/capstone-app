class PlanetsController < ApplicationController
  def show
    planet = Planet.all
    render json: planet.as_json
  end

  def index
    planet = Planet.find_by(name: params[:name])
    render json: planet.as_json
  end

  def create
    planet = Planet.new(name: params[:name], diameter: params[:diameter], mass: params[:mass], orbital_distance: params[:orbital_distance], color: params[:color])
    if planet.save
      render json: planet.as_json
    else 
      render json: {error: planet.errors.full_messages}, status: 406
    end
  end

  def update
    planet = Planet.find_by(name: params[:name])
    planet.name = params[:name] || planet.name
    planet.diameter = params[:diameter] || planet.diameter
    planet.mass = params[:mass] || planet.mass
    planet.orbital_distance = params[:orbital_distance] || planet.orbital_distance
    planet.color = params[:color] || planet.color
    if planet.save
      render json: planet.as_json
    else 
      render json: {error: planet.errors.full_messages}, status: 406
    end
  end

  def destroy
    planet = Planet.find_by(name: params[:name])
    if planet.delete
      render json: {message: "#{input} destroyed"
    else 
      render json: {message: "Destruction failed."}
    end
  end

end
