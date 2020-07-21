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

    def trips
        Trip.all.find_all {|trips| trips.listing = self}
    end

    def trip_count
    end

    def self.find_all_by_city(city)
    end

    def self.most_popular
    end

end