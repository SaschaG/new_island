class CreateVillages < ActiveRecord::Migration
  def self.up
    create_table :villages do |t|
      t.string :name
      t.integer :user_id
      t.integer :hq_id
      t.integer :woodhouse_id
      t.integer :pit_id
      t.integer :mine_id
      t.integer :farm_id
      t.integer :depot_id
      t.integer :wood
      t.integer :stone
      t.integer :iron
      t.integer :population
      t.integer :x
      t.integer :y
      

      t.timestamps
    end
  end

  def self.down
    drop_table :villages
  end
end
