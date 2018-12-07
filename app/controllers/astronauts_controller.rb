class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
    @average_age = Astronaut.avg_age
    @missions = Astronaut.all_missions
  end
end
