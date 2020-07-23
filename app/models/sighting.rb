class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location
end

def index
  sightings = Sighting.all
  render json: sightings.to_json(include: [:bird, :location])
end
 
def show
  sighting = Sighting.find_by(id: params[:id])
  render json: sighting.to_json(include: [:bird, :location])
end