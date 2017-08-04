require '../lib/docking_station'
require '../lib/bike'

station = DockingStation.new

puts "1. I can create a new Docking Station"
puts station

puts "2. I can check if a bike is working"
bike = Bike.new
bike.working?

puts "3. Method dock_bikes works"
station.dock_bike(bike)

# puts "4. Method isDocked works"
# station.isDocked

station.bikes = [1]
puts "5. No error because bikes available"
station.release_bike

# station.bikes = []
# # puts "6. Check docking_station is empty"
# station.release_bike

puts "7. allows us to set capacity of the station to 50"
DockingStation.new(50)

puts "8. the default capacity is 20 when no parameters are passed"
aldgate = DockingStation.new
puts 20.times {aldgate.dock_bike Bike.new}
puts 21.times {aldgate.dock_bike Bike.new}