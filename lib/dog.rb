require_relative 'owner'
class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    self.owner = owner
    self.mood = "nervous"
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
