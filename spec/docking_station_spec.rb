require "docking_station"
require "bike"

describe DockingStation do
  
    it { expect(DockingStation.new).to respond_to :release_bike }
    
    it 'docks something' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes.last).to eq (bike)
    end
    
  
    it "returns docked bike " do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
    
    it { is_expected.to respond_to(:bikes) }
    
    describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    end
    
    describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    end
    
    describe '#dock' do
    it 'raises an error when full' do
      DockingStation::STATION_CAPACITY.times { subject.dock Bike.new }
      expect{ subject.dock Bike.new }.to raise_error('Docking station full')
    end
    end

end
