require "docking_station"

describe DockingStation do
  describe "release bike" do
    it { is_expected.to respond_to(:release_bike) }
  end
    it "raises an error if there are no bikes" do
        station = DockingStation.new
        expect (station.release_bike).to raise_error 'There are no bikes available'
  end
  describe "docks bike" do
    it { is_expected.to respond_to(:dock).with(1).argument }
  end
  it "bike is working" do
    bike = Bike.new
    expect(bike.working?).to be true
  end
end
