class Api::V1::SpacecraftsController < ApplicationController

  def index
    client = StarwarsClient.new
    render json: client.get_vehicles
  end
end
