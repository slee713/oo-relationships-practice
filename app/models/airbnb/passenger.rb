class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ride_with_driver(driver, distance)
        Ride.new(self, driver, distance)
    end

    def rides
        Ride.all.find_all {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        self.rides.map {|ride| ride.distance}.sum
    end

    def self.premium_members
        self.all.find_all {|passenger| passenger.total_distance > 100}
    end 


end