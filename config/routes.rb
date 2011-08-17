NewIsland::Application.routes.draw do

  resources :villages

  devise_for :users
  resources :users, :only => [:index, :show]
root :to => "pages#home"
end
