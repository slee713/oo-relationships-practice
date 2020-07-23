class Actor
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def characters 
        Character.all.find_all {|character| character.actor == self}
    end

    def self.most_characters
        self.all.max_by {|actor| actor.characters.count}
    end


end