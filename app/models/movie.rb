class Movie
    attr_reader :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_character(character)
        MovieCharacter.new(self, character)
    end

    def movie_characters 
        MovieCharacter.all.find_all {|moviecharacter| moviecharacter.movie == self}
    end

    def characters 
        self.movie_characters.map {|mc| mc.character}
    end

    def self.most_actors
        self.all.max_by {|movie| movie.characters.count}
    end

    


end
