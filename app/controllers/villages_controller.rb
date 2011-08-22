class VillagesController < ApplicationController
  # GET /villages
  # GET /villages.xml
  def index
    @villages = Village.where(:user_id => current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @villages }
    end
  end

  # GET /villages/1
  # GET /villages/1.xml
  def show
    @village = Village.find(params[:id])
    @coords = Coordinates.where(:user_id => @village.user_id).first
    @coords.x = @village.x
    @coords.y = @village.y
    @coords.save
    @user = User.find(@village.user_id)
    @village.update_population
    @village.save
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @village }
    end
  end

  # GET /villages/new
  # GET /villages/new.xml
  def new
    @village = Village.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @village }
    end
  end

  # GET /villages/1/edit
  def edit
    @village = Village.find(params[:id])
  end

  # POST /villages
  # POST /villages.xml
  def create
    @village = Village.new(params[:village])
    if Village.last.nil?
     @village.x = 50
     @village.y = 50
    elsif Village.last == Village.first 
     @village.x = 50
     @village.y = 48
    else
      if Village.last.x <= 50
        random = rand(4)
        if random == 0
          @village.x = 100 - Village.last.x 
        elsif random == 1
          @village.x = Village.last.x - 1
        elsif random == 2
          @village.x = Village.last.x - 2
        elsif random == 3
          @village.x = Village.last.x - 3
        else
          @village.x = 100 - Village.last.x  - 4
        end
      else
        random = rand(4)
        if random == 0
          @village.x = 100 - Village.last.x
        elsif random == 1
          @village.x = Village.last.x + 1
        elsif random == 2
          @village.x = Village.last.x + 2
        elsif random == 3
          @village.x = Village.last.x + 3
        else
          @village.x = 100 - Village.last.x + 4
        end
      end
      
      if Village.last.y <= 50
        random = rand(4)
        if random == 0
          @village.y = 100 - Village.last.y
        elsif random == 1
          @village.y = Village.last.y - 1
        elsif random == 2
          @village.y = Village.last.y - 2
        elsif random == 3
          @village.y = Village.last.y - 3
        else
          @village.y = 100 - Village.last.y - 4
        end
      else
        random = rand(4)
        if random == 0
          @village.y = 100 - Village.last.y
        elsif random == 1
          @village.y = Village.last.y + 1
        elsif random == 2
          @village.y = Village.last.y + 2
        elsif random == 3
          @village.y = Village.last.y + 3
        else
          @village.y = 100 - Village.last.y + 4
        end
      end
    end
     @village.hq_id = 1
     @village.woodhouse_id = 1
     @village.mine_id = 1
     @village.pit_id = 1
     @village.depot_id = 1
     @village.farm_id = 1
     @village.wood = 120
     @village.stone = 120
     @village.iron = 120
     @village.user_id = current_user.id
        if @village.x == Village.where(:x => @village.x) && @village.x == Village.where(:y => @village.y)
          while @village.x == Village.where(:x => @village.x) && @village.x == Village.where(:y => @village.y)
            @village.x = @village.x + 1
            @village.y = @village.y - 1
          end
        else
        end
    respond_to do |format|
      if @village.save
        format.html { redirect_to(@village, :notice => 'Village was successfully created.') }
        format.xml  { render :xml => @village, :status => :created, :location => @village }
        @c = Coordinates.new(params[:coordinates])
        @c.x = @village.x
        @c.y = @village.y
        @c.user_id = @village.user_id
        @c.save
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @village.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /villages/1
  # PUT /villages/1.xml
  def update
    @village = Village.find(params[:id])

    respond_to do |format|
      if @village.update_attributes(params[:village])
        format.html { redirect_to(@village, :notice => 'Village was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @village.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /villages/1
  # DELETE /villages/1.xml
  def destroy
    @village = Village.find(params[:id])
    @village.destroy

    respond_to do |format|
      format.html { redirect_to(villages_url) }
      format.xml  { head :ok }
    end
  end
  
  def upgrade_hq
    @village = Village.find(params[:id])
    if @village.wood >= Hq.find(@village.hq_id).woodcost && @village.stone >= Hq.find(@village.hq_id).stonecost && @village.iron >= Hq.find(@village.hq_id).ironcost
    @village.upgrade_hq
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
    else
    flash[:notice] = "Nicht genügend Rohstoffe!"
    redirect_to village_url(@village)
    end
  end
  
  def upgrade_depot
    @village = Village.find(params[:id])
    if @village.wood >= Depot.find(@village.depot_id).woodcost && @village.stone >= Depot.find(@village.depot_id).stonecost && @village.iron >= Depot.find(@village.depot_id).ironcost
    @village.upgrade_depot
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
    else
    flash[:notice] = "Nicht genügend Rohstoffe!"
    redirect_to village_url(@village)
    end
  end
  
  def upgrade_woodhouse
    @village = Village.find(params[:id])
    @village.upgrade_woodhouse
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
  end
  
  def upgrade_pit
    @village = Village.find(params[:id])
    @village.upgrade_pit
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
  end
  
  def upgrade_mine
    @village = Village.find(params[:id])
    @village.upgrade_mine
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
  end
  
  def upgrade_farm
    @village = Village.find(params[:id])
    @village.upgrade_farm
    flash[:notice] = "Upgrading"
    redirect_to village_url(@village)
  end
  
  def map
  end
  
  def up_to_top
    @village = Village.find(params[:id])
    @coordinates = Coordinates.where(:user_id => @village.user_id).first.y
    @coordinates = @coordinates + 4
    @village.up_to_top
    redirect_to village_url(@villages)
  end
  
  def ressources
render :layout => false
  end
end
