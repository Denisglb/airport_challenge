require_relative '../lib/airport'

describe Airport do 
	it "responds to a plane taking off" do
		expect(subject).to respond_to(:take_off)
	end

	it "responds to a plane landing" do
		expect(subject).to respond_to(:land)
	end

	it "confirmation that a plane has landed" do
		plane = Plane.new
		expect(subject.land(plane)).to eq subject.planes
	end

end