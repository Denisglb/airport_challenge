require_relative '../lib/airport'

describe Airport do 
	it "responds to a plane taking off" do
		expect(subject).to respond_to(:take_off)
	end

	it "will not take off if the weather is bad" do
		plane = Plane.new
		subject.land(plane)
		expect{subject.take_off(plane,true)}.to raise_error ('Weather is too dangerous')
	end

	it "plane will not take off if there are no planes" do
		subject.planes = []
		plane = Plane.new
		expect{subject.take_off(plane)}.to raise_error ("There are no planes at the moment!")
	end

	it "a plane will take off" do
		plane = Plane.new
		subject.land(plane)
		expect(subject.take_off(plane)).to eq "#{plane} has taken off"
	end

	it "responds to a plane landing" do
		expect(subject).to respond_to(:land)
	end

	it "a plane will not land if the weather is bad" do
		plane = Plane.new
		expect{subject.land(plane, true)}.to raise_error ("Danger! Terrible weather")
	end

	it "too many planes already at the airport" do
		plane = Plane.new
		20.times {subject.land(plane)}
		expect{subject.land(plane)}.to raise_error ("There are no more")
	end

	it "confirmation that a plane has landed" do
		plane = Plane.new
		expect(subject.land(plane)).to eq subject.planes
	end

	it "stock planes" do
		expect(subject.stock_planes(20)).to eq 20
	end
end
