class Song

    attr_reader :artist, :genre
    attr_accessor :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    
end