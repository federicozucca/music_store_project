require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')

Artist.delete_all
# Album.delete_all

artist1 = Artist.new({
  'name' => "ACDC"})

artist1.save

artist2 = Artist.new({
  'name' => "Guns and Roses"})

artist2.save

artist3 = Artist.new({
  'name' => "The Offspring"})

artist3.save

artist4 = Artist.new({
  'name' => "Red Hot Chili Peppers"})

artist4.save

artist5 = Artist.new({
  'name' => "The Beatles"})

artist5.save

artist6 = Artist.new({
  'name' => "Sum 41"})

artist6.save

album1 = Album.new({
  'title' => 'back in black',
  'genre' => 'rock',
  'artist_id' => artist1.id,
  'price' => 30
  })

# album1.save

album2 = Album.new({
  'title' => 'live in Rio',
  'genre' => 'rock',
  'artist_id' => artist1.id,
  'price' => 20
  })

# album2.save

album3 = Album.new({
  'title' => 'G N R Lies',
  'genre' => 'rock',
  'artist_id' => artist2.id,
  'price' => 20
  })

# album3.save