require "bike"
describe Bike do
    it { expect(Bike.new).to respond_to :working? }
    it { expect(Bike.new.working?).to eq(true).or eq(false) }
end