
namespace :db do
desc "Go through district table to check for empty lat and long values and then re-geocode"
task :update => :environment do


require 'geocoder'

@districts = District.find(:all, :conditions=> { :latitude => nil})

@districts.each do |d|

d.save


end
end
end





