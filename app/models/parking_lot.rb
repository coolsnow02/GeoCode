class ParkingLot < ActiveRecord::Base

  #Attributes accessible for read-write purposes
  attr_accessible :address, :city, :country, :name, :state, :zipcode


  #NOTE: Fields on which Geocoding is implemented.
  acts_as_gmappable  :process_geocoding => true, :check_process => true

  def gmaps4rails_address
    "#{self.address}, #{self.city}, #{self.state}, #{self.zipcode}, #{self.country}"
  end
end
