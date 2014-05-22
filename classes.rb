class Politician
	def initialize(list_array, name, affiliation)
		@name = name
		@affiliation = affiliation
		@list_array = list_array
	end

	def create
		@list_array << ["POLITICIAN", @name, @affiliation]
	end

	def update(index)
		@list_array[index] = ["POLITICIAN", @name, @affiliation]
	end
end

class Voter
	def initialize(list_array, name, affiliation)
		@name = name
		@affiliation = affiliation
		@list_array = list_array
	end

	def create
		@list_array << ["VOTER", @name, @affiliation]
	end

	def update(index)
		@list_array[index] = ["VOTER", @name, @affiliation]
	end
end