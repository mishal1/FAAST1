class Person
	def initialize
		@tapped = false
	end

	def tapped?
		@tapped
	end

	def tap_in
		@tapped = true
	end

	def tap_out
		@tapped = false
	end

	# def move_on_the(container)
		
	# end
end