class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :director_name
      t.string :district_name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.string :website
      t.text :service_hours
      t.integer :population
      t.integer :district_class
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
