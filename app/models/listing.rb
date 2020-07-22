class Listing
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trip_with_guest(guest)
        Trip.new(self, guest)
    end
    
    def guests
        self.trips.map {|trip| trip.guest}
    end

    def trips
        Trip.all.find_all {|trips| trips.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.find_all {|listing| listing.city.downcase == city.downcase}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end

end