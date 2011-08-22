class CoordinatesController < ApplicationController
  def map
  
  end
  
  def up_to_top
    @coordinates = Coordinates.where(:user_id => current_user.id).first
    @coordinates.y = @coordinates.y + 4
    @coordinates.save
    redirect_to coordinates_map_path
  end
  
  def up_to_bottom
    @coordinates = Coordinates.where(:user_id => current_user.id).first
    @coordinates.y = @coordinates.y - 4
    @coordinates.save
    redirect_to coordinates_map_path
  end
  
  def up_to_right
    @coordinates = Coordinates.where(:user_id => current_user.id).first
    @coordinates.x = @coordinates.x + 4
    @coordinates.save
    redirect_to coordinates_map_path
  end
  
  def up_to_left
    @coordinates = Coordinates.where(:user_id => current_user.id).first
    @coordinates.x = @coordinates.x - 4
    @coordinates.save
    redirect_to coordinates_map_path
  end
  
end
