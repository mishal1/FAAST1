module Container

	def people
		@people ||= []
	end

	def empty?
		people.count == 0
	end

	def hold(person)
		people << person
	end

	def release(person)
		people.delete(person)
	end

end
