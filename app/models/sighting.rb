class Sighting < ApplicationRecord
  belongs_to :bird
  belongs_to :location
end

def show
  sighting = Sighting.find_by(id: params[:id])
  render json: sighting
end
