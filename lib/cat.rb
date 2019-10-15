class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize(name, owner)
    @name = name
    self.owner = owner
    self.mood = "nervous"
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def buy_cat(cat)
    cat.owner = self
  end

end
