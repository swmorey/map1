
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
      :district_class => row[12]
      )
  end
end
end
