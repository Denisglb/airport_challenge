require_relative '../lib/weather'

describe Weather do
	it 'responds to weather the plane is safe' do
		expect(subject).to respond_to(:stormy?)
	end

end