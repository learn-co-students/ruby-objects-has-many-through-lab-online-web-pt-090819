class Song
  attr_accessor :artist, :name, :genre
@@all = []

  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
end
