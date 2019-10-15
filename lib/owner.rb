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
    if cat.is_a?(Cat)
      buy_pet(cat, :cats)
    elsif cat.is_a?(String)
      cat_proper = Cat.all.find{|cat_object| cat_object.name == cat}
      if cat_proper
        buy_pet(cat_proper, :cats)
      else
        buy_pet(Cat.new(cat, self), :cats)
      end
    else
      puts "Not a cat"
    end
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
