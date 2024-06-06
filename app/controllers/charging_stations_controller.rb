
require_relative '../services/e_chargingstations_service'
class ChargingStationsController < ApplicationController
  def index
    @stations = ChargingStationService.get_stations(params[:latitude], params[:longitude])
  end
end
