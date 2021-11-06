class PlanetsController < ApplicationController
  def index
    planet = Planet.all
    render json: planet.as_json
  end
end
