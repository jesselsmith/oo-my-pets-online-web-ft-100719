class Owner
  attr_reader :name, :species, :pets
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {}
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
    Cat.all.select{|cat| cat.owner = self}
  end

  def dogs
    Dog.all.select{|dog| dog.owner = self}
  end

  def buy_cat(cat)
    if self.pets.has_key?(:Cats)
      pets[:Cats] << cat
    else
      pets[:Cats] = [cat]
    end
    cat.owner = self
  end

end
