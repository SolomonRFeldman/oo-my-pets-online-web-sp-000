class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
    puts @pets[:fishes]
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
end