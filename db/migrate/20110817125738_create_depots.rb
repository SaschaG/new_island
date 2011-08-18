class CreateDepots < ActiveRecord::Migration
  def self.up
    create_table :depots do |t|
      t.integer :limit
      t.integer :points
      t.integer :worker
      t.integer :buildtime
      t.integer :woodcost
      t.integer :stonecost
      t.integer :ironcost

      t.timestamps
    end
  end

  def self.down
    drop_table :depots
  end
end
