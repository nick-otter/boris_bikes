require_relative '../lib/bike'

class DockingStation

  attr_accessor :bikes
  DEFAULT_CAPACITY = 20

  def initialize()
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    if @bikes.empty?
    raise 'No bikes available'
    else
    Bike.new
  end
end

  def dock_bike(bike)
   if @bikes.length >= @capacity
     raise "No docking slots available"
   else
     @bikes << bike
  end
end

  def isDocked
  end
end
