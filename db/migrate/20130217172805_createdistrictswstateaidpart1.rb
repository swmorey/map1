class Createdistrictswstateaidpart1 < ActiveRecord::Migration
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
      t.integer :childrens_circ
      t.integer :percent_childrens_circ
      t.integer :nonchildren_circ 
      t.integer :circ
      t.float :circ_per_capita
      t.float :material_turnover
	  t.integer :reference_transactions
	  t.float :reference_transactions_per_capita
	  t.integer :ill_borrowed
	  t.integer :ill_loaned
	  t.integer :visits
	  t.float :visits_per_capita
	  t.integer :public_computer_users
	  t.integer :registered_users
	  t.integer :collection_size  
      t.timestamps
    end
  end
end
