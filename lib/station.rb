require "/Users/Mishal/Documents/code/makers/FAAST1/lib/container.rb"

class Station
	include Container

	attr_reader :trains

	def initialize
		@trains =[]
	end

	def dock(train)
		@trains << train
	end

	def move(train)
		@trains.delete(train)
	end

end