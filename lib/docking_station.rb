class DockingStation
attr_reader :bikes
STATION_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end
  
  private 
  
  def full?
  @bikes.count >= STATION_CAPACITY
  end
  
  def empty?
  @bikes.empty?
  end
  
end
