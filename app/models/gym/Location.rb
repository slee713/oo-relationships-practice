class Location
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_trainer(trainer)
        TrainerLocation.new(trainer, self)
    end


    def find_trainerlocation
        TrainerLocation.all.find_all {|tl| tl.location == self}
    end

    def trainers 
        self.find_trainerlocation.map {|tl| tl.trainer}
    end

    def clients 
        clients = []
        self.trainers.each do |trainer|
            trainer.clients.each do |client|
                if !clients.include?(client)
                    clients << client
                end
            end
        end
        clients
    end

    def self.least_clients
        self.all.min_by {|location| location.clients}
    end

end