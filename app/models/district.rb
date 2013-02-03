class District < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :director_name, :district_class, :district_name, :email, :latitude, :longitude, :phone, :population, :service_hours, :state, :website, :zip

  
  geocoded_by :address

  after_validation :geocode
  
def address
 address = [address_line1, address_line2, city, state, zip].compact.join(', ')
  end 
  end
