class Api::V1::SpacecraftsController < ApplicationController

  def index
    client = StarwarsClient.new
    render json: client.get_vehicles
  end

  def show
    client = StarwarsClient.new
    render json: client.get_vehicle(params[:id])
  end
end
