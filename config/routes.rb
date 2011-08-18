NewIsland::Application.routes.draw do

  resources :villages

  devise_for :users
  resources :users, :only => [:index, :show]
  match "villages/:id/upgrade_hq" => 'villages#upgrade_hq', :controller => 'villages', :action => 'upgrade_hq'
  match "villages/:id/upgrade_depot" => 'villages#upgrade_depot', :controller => 'villages', :action => 'upgrade_depot'
  match "villages/:id/upgrade_woodhouse" => 'villages#upgrade_woodhouse', :controller => 'villages', :action => 'upgrade_woodhouse'
  match "villages/:id/upgrade_pit" => 'villages#upgrade_pit', :controller => 'villages', :action => 'upgrade_pit'
  match "villages/:id/upgrade_mine" => 'villages#upgrade_mine', :controller => 'villages', :action => 'upgrade_mine'
  match "villages/:id/upgrade_farm" => 'villages#upgrade_farm', :controller => 'villages', :action => 'upgrade_farm'
root :to => "pages#home"
end
