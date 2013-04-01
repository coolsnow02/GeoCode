class ParkingLot < ActiveRecord::Base
  attr_accessible :address, :city, :country, :name, :state, :zipcode
end
