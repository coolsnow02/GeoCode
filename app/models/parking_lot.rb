class ParkingLot < ActiveRecord::Base

  #Attributes accessible for read-write purposes
  attr_accessible :address, :city, :country, :name, :state, :zipcode


  #NOTE: Fields on which Geocoding is implemented.
  #acts_as_gmappable

  def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.street}, #{self.city}, #{self.country}"
  end
end
