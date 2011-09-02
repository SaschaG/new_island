NewIsland::Application.routes.draw do

  resources :villages

  devise_for :users
  resources :users, :only => [:index, :show]
  resources :villages
  match "villages/:id/upgrade_hq" => 'villages#upgrade_hq', :controller => 'villages', :action => 'upgrade_hq'
  match "villages/:id/upgrade_depot" => 'villages#upgrade_depot', :controller => 'villages', :action => 'upgrade_depot'
  match "villages/:id/upgrade_woodhouse" => 'villages#upgrade_woodhouse', :controller => 'villages', :action => 'upgrade_woodhouse'
  match "villages/:id/upgrade_pit" => 'villages#upgrade_pit', :controller => 'villages', :action => 'upgrade_pit'
  match "villages/:id/upgrade_mine" => 'villages#upgrade_mine', :controller => 'villages', :action => 'upgrade_mine'
  match "villages/:id/upgrade_farm" => 'villages#upgrade_farm', :controller => 'villages', :action => 'upgrade_farm'
  match "coordinates/map" => 'coordinates#map', :controller => 'coordinates' 
  match "coordinates/up_to_top" => 'coordinates#up_to_top', :controller => 'coordinates', :action => 'up_to_top'
  match "coordinates/up_to_bottom" => 'coordinates#up_to_bottom', :controller => 'coordinates', :action => 'up_to_bottom'
  match "coordinates/up_to_right" => 'coordinates#up_to_right', :controller => 'coordinates', :action => 'up_to_right'
  match "coordinates/up_to_left" => 'coordinates#up_to_left', :controller => 'coordinates', :action => 'up_to_left'
  
  match "villages/:id/ressources" => 'villages#ressources', :controller => 'villages', :action => 'ressources'
root :to => "pages#home"
end
