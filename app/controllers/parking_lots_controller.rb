class ParkingLotsController < ApplicationController
  def index

  end

  def new
    @parking_lot = ParkingLot.new()
    @json = ParkingLot.all.to_gmaps4rails
  end

  def create
    @parking_lot = ParkingLot.new(params[:parking_lot])
    if @parking_lot.save
      redirect_to parking_lots_path
    else
      render 'new'
    end
  end

  def search_result
    @lots = ParkingLot.where('city like ?', "%#{search}%")
  end

end
