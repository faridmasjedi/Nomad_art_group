# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
a1 = Artist.create :name => 'Farid Masjedi'
a2 = Artist.create :name => 'Sara Alizadeh'
a3 = Artist.create :name => 'Ehsan Aliverdi'
a4 = Artist.create :name => 'Salar Hosseini'
a5 = Artist.create :name => 'Maedeh Timajchi'
puts "#{Artist.count} artists created."

Role.destroy_all
director1 = Role.create :title => 'Director'
director2 = Role.create :title => 'Director'

r1 = Role.create :title => 'Graphic Designer'

actor1 = Role.create :title => 'Actor'
actor2 = Role.create :title => 'Actor'
actor3 = Role.create :title => 'Actor'

r2 = Role.create :title => 'Set Designer'
r3 = Role.create :title => 'Light Designer'


# photographer1 = Role.create :title => 'Photographer'
# photographer2 = Role.create :title => 'Photographer'

costume1 = Role.create :title => 'Costume Designer'
costume2 = Role.create :title => 'Costume Designer'

r4 = Role.create :title => 'Director Assistant'

video1 = Role.create :title => 'Video'
video2 = Role.create :title => 'Video'

r5 = Role.create :title => 'Stage Manager'
# r6 = Role.create :title => 'Producer'
# r7 = Role.create :title => 'Makeup'
puts "#{Role.count} title created"


Event.destroy_all
e1 = Event.create :title => 'Dystopia', :date => '20 July - 03 Mar 2018', :venue => 'PACT'
e2 = Event.create :title => 'The Good Doctor', :date => '18 July - 21 Mar 2019', :venue => 'Epping Community Centre'
e3 = Event.create :title => 'Veronica Room', :date => '03 Mar - 21 Mar 2020', :venue => 'Flight Path Theatre'
e4 = Event.create :title => 'Third Script Workshop', :date => '02 July - 05 Dec 20 2018', :venue => 'West Ryde Community Center'
puts "#{Event.count} events created."

User.destroy_all
u1 = User.create :email => 'farid@nomad.com', :password => 'nomad'
u2 = User.create :email => 'mo@nomad.com', :password => 'nomad'
u3 = User.create :email => 'sal@nomad.com', :password => 'nomad'
u4 = User.create :email => 'sam@nomad.com', :password => 'nomad'
puts "#{User.count} audiences created"

Genre.destroy_all
g1 = Genre.create :title => 'Theatre Play'
g2 = Genre.create :title => 'Play Reading'
g3 = Genre.create :title => 'Movie Workshop'


#associations
puts "artists and roles"
a1.roles << director1 << r4 << video1
a2.roles << r1 << video2 << costume1
a3.roles << director2 << actor1 << r3
a4.roles << actor2 << r2
a5.roles << actor3 << costume2 << r5

puts "roles and events"
e1.roles << director1 << actor1 << r1 << costume1 << r3
e2.roles << actor2 << r2 << r5
e3.roles << actor3 << director2 << video1 << costume2 << r4
e4.roles << video2

puts "genres and event"
g1.events << e1 << e3
g2.events << e2
g3.events << e4

puts "users and events"
e1.users << u1 << u2 << u3
e2.users << u1 << u3
e3.users << u1 << u4
e4.users << u1 << u3
