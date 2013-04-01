class ParkingLotsController < ApplicationController
  def index
  end

  def new
      @parking_lot = ParkingLot.new()
  end

  def create
    @parking_lot = ParkingLot.new(params[:parking_lot])
  end
end
