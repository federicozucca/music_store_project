require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')

Album.delete_all
Artist.delete_all


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

album1.save

album2 = Album.new({
  'title' => 'live in Rio',
  'genre' => 'rock',
  'artist_id' => artist1.id,
  'price' => 20
  })

album2.save

album3 = Album.new({
  'title' => 'G N R Lies',
  'genre' => 'rock',
  'artist_id' => artist2.id,
  'price' => 20
  })

album3.save

album4 = Album.new({
  'title' => 'All Killer No Filler',
  'genre' => 'punk',
  'artist_id' => artist2.id,
  'price' => 20
  })

album4.save

album5 = Album.new({
  'title' => 'G N R Lies',
  'genre' => 'rock',
  'artist_id' => artist6.id,
  'price' => 20
  })

album5.save

album6 = Album.new({
  'title' => 'Californication',
  'genre' => 'rock',
  'artist_id' => artist4.id,
  'price' => 20
  })

album6.save

album6 = Album.new({
  'title' => 'By the Way',
  'genre' => 'rock',
  'artist_id' => artist4.id,
  'price' => 20
  })

album6.save

