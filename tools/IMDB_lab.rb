require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


steven = Actor.new("steven")
matt_damon = Actor.new("Matt Damon")
steve_carell = Actor.new("Steve Carell")
jenna_fischer = Actor.new("Jenna Fischer")
jennifer_aniston = Actor.new("Jennifer Aniston")
matt_leblanc = Actor.new("Matt LeBlanc")

mark_watney = Character.new("Mark Watney", matt_damon)
john = Character.new("John", steven)
michael_scott = Character.new("Michael Scott", steve_carell)
mark_baum = Character.new("Mark Baum", steve_carell)
mark_naird = Character.new("Mark Naird", steve_carell)
pam_beesly = Character.new("Pam Beesly", jenna_fischer)
rachel_green = Character.new("Rachel Green", jennifer_aniston)
joey_tribbiani = Character.new("Joey Tribbiani", matt_leblanc)

mars = Movie.new("Mars")
the_big_short = Movie.new("The Big Short")



mars.add_character(mark_watney)
mars.add_character(john)
mars.add_character(mark_naird)
the_big_short.add_character(mark_baum)



friends = Show.new('Friends')
the_office = Show.new('The Office')
space_force = Show.new('Space Force')
mars2 = Show.new("Mars")

space_force.add_character(mark_naird)

the_office.add_character(michael_scott)
pam_beesly.add_show(the_office)

friends.add_character(joey_tribbiani)
rachel_green.add_show(the_office)



# p Actor.most_characters