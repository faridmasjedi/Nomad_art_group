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

costume1 = Role.create :title => 'Costume Designer'
costume2 = Role.create :title => 'Costume Designer'

r4 = Role.create :title => 'Director Assistant'

video1 = Role.create :title => 'Video'
video2 = Role.create :title => 'Video'

r5 = Role.create :title => 'Stage Manager'
puts "#{Role.count} title created"


Event.destroy_all
e1 = Event.create :title => 'Dystopia', :date => '20 July - 03 Mar 2018', :venue => 'PACT'
e2 = Event.create :title => 'The Good Doctor', :date => '18 July - 21 Mar 2019', :venue => 'Epping Community Centre'
e3 = Event.create :title => 'Veronica Room', :date => '03 Mar - 21 Mar 2020', :venue => 'Flight Path Theatre'
e4 = Event.create :title => 'Third Script Workshop', :date => '02 July - 05 Dec 20 2018', :venue => 'West Ryde Community Center'
puts "#{Event.count} events created."

User.destroy_all
u1 = User.create :email => 'farid@nomad.com', :password => 'nomad', :admin => true
u2 = User.create :email => 'mo@nomad.com', :password => 'nomad'
u3 = User.create :email => 'sal@nomad.com', :password => 'nomad'
u4 = User.create :email => 'sam@nomad.com', :password => 'nomad'
puts "#{User.count} audiences created"

Genre.destroy_all
g1 = Genre.create :title => 'Theatre Play'
g2 = Genre.create :title => 'Play Reading'
g3 = Genre.create :title => 'Movie Workshop'
puts "#{Genre.count} genres created"

Photo.destroy_all
p1 = Photo.create :img => 'https://nomadartgroup.com/images/TempPhoto/dystopia_1170x498.png'
p2 = Photo.create :img => 'https://nomadartgroup.com/images/TempPhoto/The_Good_Doctor_1170x498.png'
p3 = Photo.create :img => 'https://scontent-syd2-1.xx.fbcdn.net/v/t1.0-9/s960x960/89030833_2778922292145022_1450915775941443584_o.jpg?_nc_cat=109&_nc_sid=9e2e56&_nc_ohc=Lw8VGF2g6wUAX-PIKDW&_nc_ht=scontent-syd2-1.xx&tp=7&oh=bf7b199f2212858107224a426ca97020&oe=5FB4F6B2'
p4 = Photo.create :img => 'https://nomadartgroup.com/images/TempPhoto/photo-1495131796982-281014f71fbd_bw.jpg'
puts "#{Photo.count} photos created"

Video.destroy_all
v1 = Video.create :vid => 'https://www.youtube.com/watch?v=zS5njtHUi0w'
v2 = Video.create :vid => 'https://www.youtube.com/watch?v=17Pq568h1v4'
v3 = Video.create :vid => 'https://www.youtube.com/watch?v=-hA_oaBwfkg'
v4 = Video.create :vid => 'https://www.youtube.com/watch?v=3HGOJWYXX5o'
puts "#{Video.count} videos created"

Review.destroy_all
rev1 = Review.create :title => '"Night Writes" review',
                     :link => 'https://nightwrites.com/2020/02/29/veronicas-room-nomad-art-group/',
                     :img => 'https://i.imgur.com/BqlWk41.jpg',
                     :description => 'There’s a lot going on in Veronica’s Room from the many layered
                                      identities and exploration of the psychological self and personal
                                      responsibility.'
rev2 = Review.create :title => '"State of the art" review' ,
                     :link => 'https://stateoftheart.net.au/reviews/veronicas-room-review/',
                     :img => 'https://i.imgur.com/mFhWyvr.jpg',
                     :description => 'Presenting an eerie rendition of Ira Levin’s polarising play, Nomad Art Group’s
                                      latest production uncovers the fragility of personal identity and gradually
                                      reveals the shocking consequences of trauma.'
                                      
puts "#{Review.count} reviews created"

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

puts "images and events"
e1.photos << p1
e2.photos << p2
e3.photos << p3
e4.photos << p4

puts "videos and events"
e1.videos << v1
e2.videos << v2
e3.videos << v3
e4.videos << v4
