require "/Users/Mishal/Documents/code/makers/FAAST1/lib/container.rb"

class Train
	include Container

	attr_reader :coaches, :capacity

	def initialize(coaches = 10)
		@coaches = coaches
		@capacity = coaches * 40
	end

	def stop_at(station)
			station.dock(self)
	end

	def leave(station)
			station.release(self)
	end

end