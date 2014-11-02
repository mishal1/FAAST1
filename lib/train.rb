require "/Users/Mishal/Documents/code/makers/FAAST1/lib/container.rb"

class Train
	include Container

	attr_reader :coaches, :capacity

	def initialize(coaches = 10)
		@coaches = coaches
		@capacity = coaches * 40
	end

	def pick_up_from(station)
			station.dock(self)
			station.people.each do |person|
				self.hold(person)
				station.release(person)
			end
	end

	def leave_from(station)
			station.release(self)
			people.each do |person|
				station.hold(person)
			end
	end

end