require 'pry'

class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @artist = self
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file)
    splitter_artist = file.split(" - ")[0]
    splitter_song = file.split(" - ")[1]
    new_song = self.new(splitter_song)
    new_song.artist.name = splitter_artist 
    new_song 
    
  end





end
