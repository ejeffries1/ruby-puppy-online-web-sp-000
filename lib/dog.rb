class Dog
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    save
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
    self.name
  end
end