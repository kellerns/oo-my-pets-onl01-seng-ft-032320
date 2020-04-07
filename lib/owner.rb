class Owner
  attr_reader :name, :species
  attr_writer 
  
  @@all = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end
  
  def name
    @name
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end

  def self.cats
    @cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        @cats << cat
      else
      end
    end
      @cat 
  end

  def self.dogs
    @dogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        @dogs << dog
      else
      end
    end
      @dog 
  end
  
  def buy_cat(new_cat)
    new_cat = Cat.new(new_cat)
  end

  def buy_dog(new_dog)
    new_dog.owner = self
  end
  
end