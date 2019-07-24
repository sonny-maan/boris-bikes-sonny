require "docking_station"
require "bike"

describe DockingStation do
    it { expect(DockingStation.new).to respond_to :release_bike }
    it { expect(DockingStation.new.release_bike).to be_a(Bike) }
    
    it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  
    it { is_expected.to respond_to(:bike) }
end