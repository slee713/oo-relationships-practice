class Ride
    attr_reader :distance
    attr_accessor :passenger, :driver
    @@all = []

    def initialize(passenger, driver , distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.map {|ride| ride.distance}.sum/self.all.count
    end
end