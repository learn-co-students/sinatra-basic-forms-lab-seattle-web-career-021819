class Puppy
  attr_reader :breed
  attr_accessor :name, :age

  def initialize(name, breed, age)
    @name = name
    @age = age
    @breed = breed
  end
end
