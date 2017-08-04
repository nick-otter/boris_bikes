require_relative '../lib/bike'

class DockingStation

  attr_accessor :bikes
  # Challenge 16 passed
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike(bike)
    # check if bike is broken or not, don't release if broken
    @bikes.reject! {|x| x == "#{bike} is a broken bike"}
    if @bikes.empty?
      raise 'No bikes available'
    else
      @bikes
      @bikes.pop
    end
  end

  def show_capacity
     @capacity
  end

  def dock_bike(bike, working = true)
  # report bike as broken
  # if bike broke ???
  # accept all bikes but mark broken bikes
   if full? then raise "No docking slots available"
   elsif working == false
     broken_bike = "#{bike} is a broken bike"
     @bikes << broken_bike
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

  attr_accessor :working

  def initialize(working = true)
    @working = working
  end

  def working?
    @working == true
  end

end
