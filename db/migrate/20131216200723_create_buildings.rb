class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.text :address
      t.integer :units
    end
  end
end
