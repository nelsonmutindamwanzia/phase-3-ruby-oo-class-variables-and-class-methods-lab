class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    # return a unique array of artists && genres of existing songs respectively
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    # tally method, counts the occurrences of each element. Returns a hash with the
    # elements of the collection as keys and the corresponding counts as values.
    def self.artist_count
        @@artists.tally
    end

    def self.genre_count
        @@genres.tally
    end

end