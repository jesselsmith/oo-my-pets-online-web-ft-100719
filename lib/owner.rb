class Owner
  attr_reader :name
  def initialize(name)
    self.name = name
    self.name.freeze
    @species = "Human"
    @species.freeze
  end
end
