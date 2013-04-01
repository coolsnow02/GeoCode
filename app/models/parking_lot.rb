class ParkingLot < ActiveRecord::Base

  #Attributes accessible for read-write purposes
  attr_accessible :address, :city, :country, :name, :state, :zipcode


  #NOTE: Fields on which Geocoding is implemented.
  geocoded_by :address, :city, :zipcode
  reverse_geocoded_by :latitude, :longitude

  #Callbacks: To be done after validation
  after_validation :geocode, :reverse_geocode

  def search
    self.where('name like ? || address like ? || city like ?', "%#{params[address]}%", "%#{params[address]}%", "%#{params[address]}%")
  end
end
