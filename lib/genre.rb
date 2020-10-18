require 'pry'
class Genre

    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all do |song|
            song.genre ==  self
            # binding.pry
        end
    end

    def artists
        songs.map { |song| song.artist }
            
            # binding.pry
    end


end