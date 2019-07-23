require "docking_station"
require "bike"

describe DockingStation do
    it { expect(DockingStation.new).to respond_to :release_bike }
    it { expect(DockingStation.new.release_bike).to be_a(Bike) }
end