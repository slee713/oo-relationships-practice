class Guest
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_trip(listing)
        Trip.new(listing, self)
    end

    def listings
        self.trips.map {|trip| trip.listing}
    end

    def trips
        Trip.all.find_all {|trip| trip.guest == self}
    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
        self.all.find_all {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.find_all {|guest| guest.name.downcase == name.downcase}
    end
    
end
