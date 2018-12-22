class Api::V1::SpacecraftsController < ApplicationController

  def index
    render json: client.get_vehicles
  end

  def show
    render json: client.get_vehicle(params[:id])
  end
end
