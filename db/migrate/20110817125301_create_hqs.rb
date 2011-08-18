class CreateHqs < ActiveRecord::Migration
  def self.up
    create_table :hqs do |t|
      t.integer :rate
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
    drop_table :hqs
  end
end
