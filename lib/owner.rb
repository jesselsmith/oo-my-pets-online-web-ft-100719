class Owner
  attr_reader :name
  def initialize(name)
    @name = name
    @name.freeze
    @species = "human"
    @species.freeze
  end

  def say_species
    @species
  end
end
