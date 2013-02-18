
namespace :db do
desc "Import districts from csv file"
task :import => :environment do

require 'csv'
require 'geocoder'

CSV.foreach("#{Rails.root}/db/districts.csv") do |row|
    District.create(
      :director_name => row[0],
      :district_name => row[1],
      :address_line1 => row[2],
      :address_line2 => row[3],
      :city => row[4],
      :state => row[5],
      :zip => row[6],
      :email => row[7],
      :phone => row[8],
      :website => row[9],
      :service_hours => row[10],
      :population => row[11],
      :district_class => row[12],
      :latitude => row[13],
      :longitude => row[14],
      :childrens_circ => row[15],
      :percent_childrens_circ => row[16],
      :nonchildren_circ => row[17],
      :circ => row[18],
      :circ_per_capita => row[19],
      :material_turnover => row[20],
	  :reference_transactions => row[21],
	  :reference_transactions_per_capita => row[22],
	  :ill_borrowed => row[23],
	  :ill_loaned => row[24],
	  :visits => row[25],
	  :visits_per_capita => row[26],
	  :public_computer_users => row[27],
	  :registered_users => row[28],
	  :collection_size => row[29],  
      )
  end
end
end
