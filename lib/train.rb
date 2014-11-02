require "/Users/Mishal/Documents/code/makers/FAAST1/lib/container.rb"

class Train
	include Container

	def stop_at(station)
			station.dock(self)
	end

	def leave(station)
			station.release(self)
	end

end