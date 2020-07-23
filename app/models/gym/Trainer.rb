class Trainer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def train_at(location)
        TrainerLocation.new(self, location)
    end

    def clients 
        Client.all.find_all {|client| client.trainer==self}
    end

    def self.most_clients
        Trainer.all.max_by {|trainer| trainer.clients.count}
    end

end