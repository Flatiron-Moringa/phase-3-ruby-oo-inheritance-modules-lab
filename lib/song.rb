require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
  extend Findable

  def self.all
    @@songs
  end

  extend Memorable

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  include Paramable
end
