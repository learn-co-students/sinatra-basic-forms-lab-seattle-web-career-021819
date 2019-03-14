class Puppy
  @@all = []
  attr_reader :breed
  attr_accessor :age, :name

  def initialize(name,breed,age)
    @name = name
    @breed = breed
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
end
