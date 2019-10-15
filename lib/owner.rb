class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    self.save
  end

  def save
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cats.all.select{|cat| cat.owner = self}
  end

end
