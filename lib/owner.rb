class Owner
  attr_accessor :pets
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @species = species = "human"
    @name = name
    @@all << self
    @@pets = {:dogs => [], :cats => []}
  end
 

  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def self.count
    @@all.size
  end
  
  def buy_dog(dog)
    @@pets[:dogs] << Dog.new(dog)
  end
  
  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
 def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  
  def list_pets
    "I have #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

 end