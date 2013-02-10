class CreateDistrictclasses < ActiveRecord::Migration
  def change
    create_table :districtclasses do |t|
      t.integer :id
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
