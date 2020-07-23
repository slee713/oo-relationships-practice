class Client
    attr_reader :name
    attr_accessor :trainer
    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer)
        self.trainer = trainer
    end
end