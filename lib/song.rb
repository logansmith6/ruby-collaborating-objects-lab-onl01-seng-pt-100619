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

  def new_by_filename(file)
    splitter = file.split(" - ")
  end





end
