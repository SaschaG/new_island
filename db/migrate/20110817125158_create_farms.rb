class CreateFarms < ActiveRecord::Migration
  def self.up
    create_table :farms do |t|
      t.integer :limit
      t.integer :points
      t.integer :buildtime
      t.integer :woodcost
      t.integer :stonecost
      t.integer :ironcost

      t.timestamps
    end
  end

  def self.down
    drop_table :farms
  end
end
