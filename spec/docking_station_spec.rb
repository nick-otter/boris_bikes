require_relative '../lib/docking_station'
require_relative '../lib/bike'

describe DockingStation do
  it "responds to releases bike" do
    expect(subject).to respond_to(:release_bike)
  end
  it "docks bike" do
      expect(subject).to respond_to(:dock_bike)
  end
  it "raises an error if there are no bikes" do
      subject.bikes = []
      bike = Bike.new
      expect { subject.release_bike(bike) }.to raise_error('No bikes available')
  end
  it "no docking slots available" do
    20.times {subject.dock_bike Bike.new}
      expect {subject.dock_bike Bike.new}.to raise_error('No docking slots available')
  end

  it "Checks default capacity is 20" do
  20.times {subject.dock_bike Bike.new}
    expect {subject.dock_bike Bike.new}.to raise_error('No docking slots available')
  end

  it "Reports a bike when broken" do
    bike = Bike.new
    expect(subject.dock_bike(bike, false)).to eq subject.bikes
  end

  it "Docking station doesn't release broken bike" do
    bike = Bike.new
    subject.dock_bike(bike, false)
    expect {subject.release_bike(bike)}.to raise_error('No bikes available')
  end

  it "Docking station accepts bikes (broken or not)" do
    denis = Bike.new
    subject.dock_bike(denis, false)
    expect(subject.bikes).to eq subject.bikes
  end
end

describe Bike do
  it "bike is working" do
    expect(subject.working?).to be true
end
end
