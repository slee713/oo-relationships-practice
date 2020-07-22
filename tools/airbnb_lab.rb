require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

nathans_house = Listing.new("seattle")
phils_house = Listing.new("fairfax")
mins_house = Listing.new("portland")
mt_rainier = Listing.new("seattle")

bob = Guest.new("bob")
steve = Guest.new("steve")
carol = Guest.new("carol")
chris = Guest.new("Chris")

nathans_house.trip_with_guest(bob)
nathans_house.trip_with_guest(steve)
nathans_house.trip_with_guest(carol)

phils_house.trip_with_guest(carol)

bob.new_trip(phils_house)
carol.new_trip(mins_house)

# print nathans_house.guests
# print nathans_house.trips 
# print nathans_house.trip_count

# print Listing.all
# print Listing.find_all_by_city("seattle")
# p Listing.most_popular

# print bob.listings
# print bob.trips
# print bob.trip_count

# print Guest.all
# print Guest.pro_traveller
# print Guest.find_all_by_name("BOb")



