class Killolddistrict < ActiveRecord::Migration
  def up
    drop_table :districts
  end

  def down
  end
end
