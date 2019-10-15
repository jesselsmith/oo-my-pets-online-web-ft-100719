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

  def buy_pet(pet, pet_category)
    if self.pets.has_key?(pet_category)
      pets[pet_category] << pet
    else
      pets[pet_category] = [pet]
    end
    pet.owner = self
  end

  def buy_cat(cat)
    buy_pet(cat, :cats)
  end

  def buy_dog(dog)
    buy_pet(dog, :dogs)
  end

  def cats
    if pets[:cats]
      pets[:cats]
    else
      []
    end
  end

  def dogs
    if pets[:dogs]
      pets[:dogs]
    else
      []
    end
  end

end
