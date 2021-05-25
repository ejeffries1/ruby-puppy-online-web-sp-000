class Dog
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    save
    @@all
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all.clear
  end
  
  private
  def self.print_all
    @@all.each do |dog|
      puts "#{dog.name}"
    end
  end
  
  private
  def save
    @@all << self
    @@all.collect do |i|
      i == self.name
    end
  end
end