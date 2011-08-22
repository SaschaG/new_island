class Village < ActiveRecord::Base
has_many :pits
has_many :woodhouses
has_many :mines
has_many :hqs
has_many :depots
has_many :farms
has_many :coordinates



  def update_population
    update_attribute(:population, Pit.find(pit_id).worker + Woodhouse.find(woodhouse_id).worker +
    Mine.find(mine_id).worker + Hq.find(hq_id).worker + Depot.find(depot_id).worker)
  end
  
  def upgrade_hq
    update_attribute(:hq_id, hq_id + 1)
    update_attribute(:wood, wood - Hq.find(hq_id).woodcost)
    update_attribute(:stone, stone - Hq.find(hq_id).stonecost)
    update_attribute(:iron, iron - Hq.find(hq_id).ironcost)
  end
 

  def upgrade_depot
    update_attribute(:depot_id, depot_id + 1)
    update_attribute(:wood, wood - Depot.find(depot_id).woodcost)
    update_attribute(:stone, stone - Depot.find(depot_id).stonecost)
    update_attribute(:iron, iron - Depot.find(depot_id).ironcost)
  end
  
  def upgrade_woodhouse
    update_attribute(:woodhouse_id, woodhouse_id + 1)
    update_attribute(:wood, wood - Woodhouse.find(woodhouse_id).woodcost)
    update_attribute(:stone, stone - Woodhouse.find(woodhouse_id).stonecost)
    update_attribute(:iron, iron - Woodhouse.find(woodhouse_id).ironcost)
    
  end
  
  def upgrade_pit
    update_attribute(:pit_id, pit_id + 1)
    update_attribute(:wood, wood - Pit.find(pit_id).woodcost)
    update_attribute(:stone, stone - Pit.find(pit_id).stonecost)
    update_attribute(:iron, iron - Pit.find(pit_id).ironcost)
  end
  
  def upgrade_mine
    update_attribute(:mine_id, mine_id + 1)
    update_attribute(:wood, wood - Mine.find(mine_id).woodcost)
    update_attribute(:stone, stone - Mine.find(mine_id).stonecost)
    update_attribute(:iron, iron - Mine.find(mine_id).ironcost)
  end
  
  def upgrade_farm
    update_attribute(:farm_id, farm_id + 1)
    update_attribute(:wood, wood - Farm.find(farm_id).woodcost)
    update_attribute(:stone, stone - Farm.find(farm_id).stonecost)
    update_attribute(:iron, iron - Farm.find(farm_id).ironcost)
  
  end
  
  

end
