require 'pry'

class Artist

    attr_accessor :name, :songs, :genre

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    # binding.pry

    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    
    def genres
        songs.map { |song| song.genre }

    end

end