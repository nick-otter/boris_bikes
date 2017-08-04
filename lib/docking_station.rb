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
    @bikes
    @bikes.pop
    end
  end

  def dock_bike(bike)
   if full?
    raise "No docking slots available"
   else
     @bikes << bike
  end
  end
  
  private

  def full?
  @bikes.size >= @capacity
  end

  def empty? 
   @bikes.size == 0
  end

end


class Bike
  def working?
    true
  end
end
