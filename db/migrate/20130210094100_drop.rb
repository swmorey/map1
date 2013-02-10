class Drop < ActiveRecord::Migration
  def up
  drop_table :districtclasses
  end

  def down
  end
end
