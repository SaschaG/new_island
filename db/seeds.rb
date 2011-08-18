# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)


puts 'SETTING UP Woodhouse'

  h1 = 0
  h1 = Woodhouse.create! :points => 5 , :rate => 12 , :worker => 1 , :buildtime => 15 , :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Woodhouse created: ' << h1.id
  h1.save
  h = Woodhouse.create!  :points => 12 , :rate => 18 , :worker => 3 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Woodhouse created: ' << h.id
  h.save
  h = Woodhouse.create! :points => 18 , :rate => 24 , :worker => 5 , :buildtime => 80, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Woodhouse created: ' << h.id
  h.save
  h = Woodhouse.create!  :points => 28 , :rate => 32, :worker => 8 , :buildtime => 160, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Woodhouse created: ' << h.id
  h.save
  h = Woodhouse.create!  :points => 38 , :rate => 38, :worker => 11 , :buildtime => 360, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Woodhouse created: ' << h.id
  h.save
  
  puts 'SETTING UP Pit'
  h1 = 0
  h1 = Pit.create!  :points => 5 , :rate => 12 , :worker => 1 , :buildtime => 15, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Pit created: ' << h1.id
  h1.save
  h = Pit.create!  :points => 12 , :rate => 18 , :worker => 3 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Pit created: ' << h.id
  h.save
  h = Pit.create!  :points => 18 , :rate => 24 , :worker => 5 , :buildtime => 80, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Pit created: ' << h.id
  h.save
  h = Pit.create!  :points => 28 , :rate => 32 , :worker => 8 , :buildtime => 160, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Pit created: ' << h.id
  h.save
  h = Pit.create! :points => 38 , :rate => 38 , :worker => 11 , :buildtime => 360, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Pit created: ' << h.id
  h.save
  
  puts 'SETTING UP Mine'

  h1 = 0
  h1 = Mine.create!  :points => 5 , :rate => 12 , :worker => 1 , :buildtime => 15, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Mine created: ' << h1.id
  h1.save
  h = Mine.create! :points => 12 , :rate => 18 , :worker => 3 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Mine created: ' << h.id
  h.save
  h = Mine.create!  :points => 18 , :rate => 24 , :worker => 5 , :buildtime => 80, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Mine created: ' << h.id
  h.save
  h = Mine.create!  :points => 28 , :rate => 32 , :worker => 8 , :buildtime => 160, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Mine created: ' << h.id
  h.save
  h = Mine.create!  :points => 38 , :rate => 38 , :worker => 11 , :buildtime => 360, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Mine created: ' << h.id
  h.save
  
  puts 'SETTING UP Hq'

  h1 = 0
  h1 = Hq.create! :points => 5 , :rate => 12 , :worker => 1 , :buildtime => 15, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Hq created: ' << h1.id
  h1.save
  h = Hq.create! :points => 12 , :rate => 18 , :worker => 3 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Hq created: ' << h.id
  h.save
  h = Hq.create! :points => 18 , :rate => 24 , :worker => 5 , :buildtime => 100, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Hq created: ' << h.id
  h.save
  h = Hq.create!  :points => 28 , :rate => 32 , :worker => 8  , :buildtime => 220, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Hq created: ' << h.id
  h.save
  h = Hq.create!  :points => 38 , :rate => 38 , :worker => 11 , :buildtime => 400, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Hq created: ' << h.id
  h.save
  
  puts 'SETTING UP Farm'

  h1 = 0
  h1 = Farm.create!   :points => 5 , :limit => 20 , :buildtime => 15, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Farm created: ' << h1.id
  h1.save
  h = Farm.create!  :points => 12 , :limit => 30 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Farm created: ' << h.id
  h.save
  h = Farm.create!  :points => 18 , :limit => 45  , :buildtime => 80, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Farm created: ' << h.id
  h.save
  h = Farm.create! :points => 28 , :limit => 65  , :buildtime => 180, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Farm created: ' << h.id
  h.save
  h = Farm.create! :points => 38 , :limit => 80  , :buildtime => 390, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New Farm created: ' << h.id
  h.save
  
  puts 'SETTING UP DEPOT'
  h1 = 0
  h1 = Depot.create!  :points => 5 , :limit => 200 , :worker => 1 , :buildtime => 15, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New DEPOT created: ' << h1.id
  h1.save
  h = Depot.create!  :points => 12 , :limit => 400 , :worker => 3 , :buildtime => 40, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New DEPOT created: ' << h.id
  h.save
  h = Depot.create!  :points => 18 , :limit => 600 , :worker => 4 , :buildtime => 90, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New DEPOT created: ' << h.id
  h.save
  h = Depot.create!  :points => 28 , :limit => 1000 , :worker => 5 , :buildtime => 190, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New DEPOT created: ' << h.id
  h.save
  h = Depot.create! :points => 38 , :limit => 1500 , :worker => 7 , :buildtime => 400, :woodcost => 30 , :stonecost => 40 , :ironcost => 10
  puts 'New DEPOT created: ' << h.id
  h.save