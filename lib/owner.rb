require 'pry'

class Owner
  # code goes here
  attr_reader :species, :name
  attr_writer :name
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

  def pets
  	{
  		fishes: [],
  		dogs: [],
  		cats: []
  	}
  end

  def buy_fish(fish)
  	new_fish = Fish.new(fish)
  	self.pets[:fishes] << new_fish
  end

  def buy_cat
  	
  end

  def buy_dog
  	
  end

end