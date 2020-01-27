class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create 
    s = self.new 
    s.save 
    s 
  end 
  
  def self.new_by_name(name)
    s = self.new 
    s.name= name 
    s 
  end 
  
  def self.create_by_name(name)
    s = self.new_by_name(name)
    s.save 
    s
  end 
  
  def self.find_by_name(name)
    self.all.find { |song| song.name == name }
  end 

  def save
    self.class.all << self
  end

end
