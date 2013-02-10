class Districtclass < ActiveRecord::Base
  attr_accessible :description, :id, :title
  has_many :districts, :foreign_key => 'district_class'
end
