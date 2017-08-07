require_relative '../lib/plane'
require_relative '../lib/weather'

class Airport
	
	attr_accessor  :planes
  	DEFAULT_CAPACITY = 20

	def initialize(capacity = DEFAULT_CAPACITY)
		@planes = []
		@capacity = capacity
	end

	def take_off(plane, weather = false)
		if weather == true 
			raise "Weather is too dangerous"
		elsif empty? 
			raise "There are no planes at the moment!"
		else
			@planes
			@planes.pop
			"#{plane} has taken off"
		end
	end

	def land(plane, weather = false)
		if weather == true 
			raise "Danger! Terrible weather"
		elsif full? 
			raise "There are no more"
		else @planes << plane
		end
	end

	def stock_planes(number = DEFAULT_CAPACITY)
		number.times do 
			plane = Plane.new
			break if @planes.size >= DEFAULT_CAPACITY
			@planes << plane
		end	
	end

	private 
	def full?
		@planes.size >= DEFAULT_CAPACITY
	end

	def empty?
		@planes.size.zero?
	end

end