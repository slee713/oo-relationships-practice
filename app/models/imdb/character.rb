class Character
    attr_reader :name, :actor
    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def add_movie(movie)
        MovieCharacter.new(movie, self)
    end

    def add_show(show)
        ShowCharacter.new(show, self)
    end
    
    def find_moviecharacter
        MovieCharacter.all.find_all {|movie_character| movie_character.character == self}
    end
        
    def movie_count
        self.find_moviecharacter.count
    end

    def find_showcharacter
        ShowCharacter.all.find_all {|show_character| show_character.character == self}
    end

    def show_count
        self.find_showcharacter.count
    end

    def self.most_appearances
        self.all.max_by {|character| character.movie_count + character.show_count}
    end
end