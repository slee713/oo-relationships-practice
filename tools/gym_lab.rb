require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Trainer.new("John")
nathan = Trainer.new("Nathan")
sam = Trainer.new("Sam")

michael = Client.new("Michael")
steven = Client.new("Steven")
phil = Client.new("Phil")

steven.assign_trainer(john)
michael.assign_trainer(john)
phil.assign_trainer(sam)



golds_gym = Location.new("Golds Gym")
lifetime = Location.new("Lifetime")
one_life = Location.new("One Life")

golds_gym.add_trainer(john)
nathan.train_at(lifetime)
nathan.train_at(golds_gym)
one_life.add_trainer(sam)

p TrainerLocation.all

binding.pry