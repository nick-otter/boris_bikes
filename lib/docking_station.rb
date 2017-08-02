$LOAD_PATH << '.'

class DockingStation
    class Bike
        def working?
            true
        end
    end

  attr_reader :bike

  def release_bike
    bike = Bike.new
  end

  def dock(bike)
    @bike = bike
  end

end
