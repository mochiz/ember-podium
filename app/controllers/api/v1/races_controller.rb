class Api::V1::RacesController < ApplicationController
  def index
    render json: { races: Race.order(:start_at), riders: Rider.all, results: Result.all }
  end

  def show
    render json: race
  end

  private

  def race
    Race.find(params[:id])
  end
end
