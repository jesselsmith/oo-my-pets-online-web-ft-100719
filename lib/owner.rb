class Owner
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
  end

  def say_species
    @species
  end
end
