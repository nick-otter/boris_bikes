require "docking_station"

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
end

describe Bike do
  it "bike is working" do
    expect(subject.working?).to be true
end
end
