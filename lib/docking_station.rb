$LOAD_PATH << '.'

class DockingStation
  class Bike
    def working?
      true
    end
  end
  def release_bike
    bike = Bike.new
  end
end
