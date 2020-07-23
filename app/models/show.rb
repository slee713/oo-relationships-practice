class Show
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
        ShowCharacter.new(self, character)
    end

    def on_the_big_screen
        Movie.all.find_all {|movie| movie.title.downcase == self.title.downcase}
    end

end