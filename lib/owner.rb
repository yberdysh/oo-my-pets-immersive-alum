class Owner
  # code goes here
  attr_reader :species
  @@all = []
  def self.all
  	@@all
  end

  def self.count
  	self.all.length
  end

  def self.reset_all
  	self.all.clear
  end


  def initialize(species)
  	@species = species
  	@@all << self
  end

  def say_species
  	return "I am a #{@species}."
  end

  def name
  	
  end

end