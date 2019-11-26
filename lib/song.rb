require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @artist = self
    @name = name
  end

  def self.all
    Song.all.select {|song| song }
  end




end
