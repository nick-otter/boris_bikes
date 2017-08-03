require_relative '../lib/docking_station'
require_relative '../lib/bike'

class DockingStation

  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
    raise 'No bikes available'
    else
    Bike.new
  end
end

  def dock_bike
    p "bike docked"
  end

  def isDocked
  end
end
