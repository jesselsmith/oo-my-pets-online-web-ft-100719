class Owner
  attr_reader :name
  def initialize(name)
    self.name = name
    self.name.freeze
    @species = "Human"
    @species.freeze
  end

  def say_species
    @species
  end
end
