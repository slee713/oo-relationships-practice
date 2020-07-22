class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ride_with_passenger(passenger, distance)
        Ride.new(passenger, self, distance)
    end

    def rides 
        Ride.all.find_all {|ride| ride.driver == self}
    end

    def passengers
        self.rides.map {|ride| ride.passenger}
    end

    def self.mileage_cap(distance)
        self.all.find_all do |driver|
            driver.rides.map {|ride| ride.distance}.sum > distance.to_f
        end
    end
end