class Owner
  attr_reader :name
  def initialize(name)
    self.name = name
    @species = "Human"
    @species.freeze
  end
end