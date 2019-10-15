class Cat
  attr_accessor :owner
  attr_reader :name

  def initialize(name, owner)
    @name = name
    self.owner = owner
  
end