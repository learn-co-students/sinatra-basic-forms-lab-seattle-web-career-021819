class Puppy
	attr_reader :breed
	attr_accessor :age, :name

	@@all = []

	def initialize(name, breed, age)
		@name = name
		@breed = breed
		@age = age
		@@all << self
	end

end