require 'pry'

class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    tester = name.split(" - ")[0]
    @@all.each do |artists|
      if tester == artists
        tester
      else
        @@all << tester
      end
    end
    
    #binding.pry
  end

end
