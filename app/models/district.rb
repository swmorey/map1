class District < ActiveRecord::Base
  attr_accessible :address_line1, :address_line2, :city, :director_name, :district_class, :district_name, :email, :latitude, :longitude, :phone, :population, :service_hours, :state, :website, :zip,:childrens_circ, :percent_childrens_circ, :nonchildren_circ,  :circ, :circ_per_capita, :material_turnover, :reference_transactions,  :reference_transactions_per_capita, :ill_borrowed, :ill_loaned, :visits, :visits_per_capita, :public_computer_users, :registered_users, :collection_size
 
  belongs_to :districtclass
    geocoded_by :address

after_validation :geocode

def address
 address = [address_line1, address_line2, city, state, zip].compact.join(', ')
  end 
  end

