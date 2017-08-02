$LOAD_PATH << '.'

class DockingStation
    class Bike
        def working?
            true
        end
    end

  attr_reader :bike

  def release_bike
    raise 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end
