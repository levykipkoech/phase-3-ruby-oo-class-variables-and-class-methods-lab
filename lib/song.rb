class Song
     
    
    attr_accessor :name, :artists, :genres
    @@count = 0
    @@artists = []
    @@genres = []
    

    def initialize(name, artists, genres)
        @name = name
        @artists = artists
        @genres = genres
        @@artists << artists
        @@genres << genres
        
        @@count += 1
    end

    def name
        @name
    end
    def artist
        @artists
         
    end
    def genre
        @genres
         
    end
    def self.count
        @@count
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.genre_count
         @@genres.tally 
    end
    def self.artist_count
         @@artists.tally
    end

end