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
      expect { subject.release_bike }.to raise_error('No bikes available')
  end
  it "no docking slots available" do
    20.times {subject.dock_bike Bike.new}
      expect {subject.dock_bike Bike.new}.to raise_error('No docking slots available')
  end

  it "Checks default capacity is 20" do
  20.times {subject.dock_bike Bike.new}
    expect {subject.dock_bike Bike.new}.to raise_error('No docking slots available')
  end
end

describe Bike do
  it "bike is working" do
    expect(subject.working?).to be true
end
end
