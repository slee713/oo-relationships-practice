require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


steven = Passenger.new("steven")
david = Passenger.new("david")

phil = Driver.new("Phil")
faye = Driver.new("Faye")

# print Driver.all
# print Passenger.all

steven.ride_with_driver(phil, 5.0)
david.ride_with_driver(phil, 8.0)

faye.ride_with_passenger(steven, 824.5)

# print steven.name
# print steven.rides
# print steven.drivers
# print Passenger.all
# print steven.total_distance
# print Passenger.premium_members

# print phil.name
# print phil.rides
# print phil.passengers
# print Driver.all
# print Driver.mileage_cap(20)

# print Ride.average_distance
