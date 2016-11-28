require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require('pry-byebug')

Album.delete_all
Genre.delete_all
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

artist7 = Artist.new({
  'name' => "Madonna"})

artist7.save

artist8 = Artist.new({
  'name' => "Ludwig Van Beethoven "})

artist8.save

genre1 = Genre.new({
  'type' => "Rock"})

genre1.save

genre2 = Genre.new({
  'type' => "Punk"})

genre2.save

genre3 = Genre.new({
  'type' => "Rock and Roll"})

genre3.save

genre4 = Genre.new({
  'type' => "Pop"})

genre4.save

genre5 = Genre.new({
  'type' => "Classical"})

genre5.save

album1 = Album.new({
  'title' => 'Back in black',
  'genre_id' => genre1.id,
  'artist_id' => artist1.id,
  'price' => 30
  })

album1.save

album2 = Album.new({
  'title' => 'Live in Rio',
  'genre_id' => genre1.id,
  'artist_id' => artist1.id,
  'price' => 20
  })

album2.save

album3 = Album.new({
  'title' => 'G N R Lies',
  'genre_id' => genre1.id,
  'artist_id' => artist2.id,
  'price' => 20
  })

album3.save

album4 = Album.new({
  'title' => 'All Killer No Filler',
  'genre_id' => genre2.id,
  'artist_id' => artist2.id,
  'price' => 20
  })

album4.save

album5 = Album.new({
  'title' => 'G N R Lies',
  'genre_id' => genre1.id,
  'artist_id' => artist6.id,
  'price' => 20
  })

album5.save

album6 = Album.new({
  'title' => 'Californication',
  'genre_id' => genre1.id,
  'artist_id' => artist4.id,
  'price' => 20
  })

album6.save

album6 = Album.new({
  'title' => 'By the Way',
  'genre_id' => genre1.id,
  'artist_id' => artist4.id,
  'price' => 20
  })

album6.save

album7 = Album.new({
  'title' => 'Help!',
  'genre_id' => genre1.id,
  'artist_id' => artist5.id,
  'price' => 20
  })

album7.save

album8 = Album.new({
  'title' => 'The Beatles',
  'genre_id' => genre3.id,
  'artist_id' => artist5.id,
  'price' => 20
  })

album8.save

album9 = Album.new({
  'title' => 'Abbey Road',
  'genre_id' => genre3.id,
  'artist_id' => artist5.id,
  'price' => 20
  })

album9.save

album10 = Album.new({
  'title' => 'The Offspring',
  'genre_id' => genre1.id,
  'artist_id' => artist3.id,
  'price' => 20
  })

album10.save

album11 = Album.new({
  'title' => 'Like a virgin',
  'genre_id' => genre4.id,
  'artist_id' => artist7.id,
  'price' => 20
  })

album11.save 

album12 = Album.new({
  'title' => 'Like a prayer',
  'genre_id' => genre4.id,
  'artist_id' => artist7.id,
  'price' => 20
  })

album12.save

album13 = Album.new({
  'title' => 'Symphony 9',
  'genre_id' => genre5.id,
  'artist_id' => artist8.id,
  'price' => 20
  })

album13.save



binding.pry
nil


