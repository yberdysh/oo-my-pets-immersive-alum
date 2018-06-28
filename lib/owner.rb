require 'pry'

class Owner
  # code goes here
  attr_reader :species, :name, :pets
  attr_writer :name, :pets
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
  	@pets = {
  		fishes: [],
  		dogs: [],
  		cats: []
  	}
  end

  def say_species
  	return "I am a #{@species}."
  end

  def buy_fish(fish)
  	new_fish = Fish.new(fish)
  	self.pets[:fishes] << new_fish
  end

  def buy_cat(some_name)
  	@pets[:cats] << Cat.new(some_name)
  	
  end

  def buy_dog(name)
  	self.pets[:dogs].push(Dog.new(name))
  	
  end

  def walk_dogs
  	@pets[:dogs].each do |dog|
  		dog.mood = "happy"
  	end
  end

  def play_with_cats
  	@pets[:cats].each do |cat|
  		cat.mood = "happy"
  	end
  end

  def feed_fish
  	@pets[:fishes].each	do |fish|
  		fish.mood = "happy"
  	end
  end

  def sell_pets
  	@pets.each do |species, pets|
  		pets.each do |pet|
  			pet.mood = "nervous"
  		end
  		pets.clear
  	end
  end

  def list_pets
  	"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end