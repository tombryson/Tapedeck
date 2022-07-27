User.destroy_all
u1 = User.create :email => 'jonesy@ga.co', :username => 'jonesy', :password => 'chicken'
u2 = User.create :email => 'craigsy@ga.co', :username => 'craigsy', :password => 'chicken', :admin => true
puts "#{ User.count } users"

Song.destroy_all
s1 = Song.create :title => 'Take On Me'
s2 = Song.create :title => 'Ballade Nr. 1 G-Moll, Op. 23'
s3 = Song.create :title => "At Les"
s4 = Song.create :title => 'Against the Sky'
puts "#{ Song.count } songs"

Album.destroy_all
l1 = Album.create :title => 'Hunting High and Low', :released => '1985-06-01'
l2 = Album.create :title => 'Chopin III', :released => '1993-04-06'
l3 = Album.create :title => 'More Songs About Food And Revolutionary Art', :released => '1997-03-24'
l4 = Album.create :title => 'The Pearl', :released => '1984-08-06'
puts "#{ Album.count } albums"

Artist.destroy_all
a1 = Artist.create :name => 'A-ha'
a2 = Artist.create :name => 'Vladimir Horowitz'
a3 = Artist.create :name => 'Carl Craig'
a4 = Artist.create :name => 'Harrold Budd'
puts "#{ Artist.count } artists"

Genre.destroy_all
g1 = Genre.create :name => 'Synth-pop'
g2 = Genre.create :name => 'Classical'
g3 = Genre.create :name => 'Detroit Techno'
g4 = Genre.create :name => 'Ambient'
puts "#{ Genre.count } genres"

Tapedeck.destroy_all
t1 = Tapedeck.create :name => "80's Pop", :username => 'jonesy'
t2 = Tapedeck.create :name => "Classical Drive", :username => 'jonesy'
t3 = Tapedeck.create :name => "Best of Detroit Techno", :username => 'craigsy'
t4 = Tapedeck.create :name => 'My Favourite Ambient Albums', :username => 'craigsy'
puts "#{ Tapedeck.count } tapedecks"

# Associations ######################################################
puts "Albums and songs"
l1.songs << s1
l2.songs << s2
l3.songs << s3
l4.songs << s4

puts "Artists and albums"
a1.albums << l1
a2.albums << l2
a3.albums << l3
a4.albums << l4

puts "Genres and albums"
g1.albums << l1
g2.albums << l2
g3.albums << l3
g4.albums << l4

puts "Tapedecks and albums"
t1.albums << l1
t2.albums << l2
t3.albums << l3
t4.albums << l4

puts "Tapedecks and users"
u1.tapedecks << t1 << t2
u2.tapedecks << t3 << t4
