
class Weather
	attr_accessor :sotrmy

	def initialize(stormy = false)
		@stormy = stormy
	end

	def stormy?
		@stromy == false
	end
end