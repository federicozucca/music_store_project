require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/genre.rb' )

require('pry-byebug')

Album.delete_all
Genre.delete_all
Artist.delete_all



artist1 = Artist.new({
  'name' => "ACDC",
  'logo' => "http://cdn.redmondpie.com/wp-content/uploads/2012/11/AC_DC_logo.jpg"})

artist1.save

artist2 = Artist.new({
  'name' => "Guns and Roses",
  'logo' => "http://synduimages.synduweb.netdna-cdn.com/uploads/513bcccdea78c/voice_inline/a8f486df-1c4d-5c31-0ad7-8bbf490d1808/5683b2d290c5c.png"})

artist2.save

artist3 = Artist.new({
  'name' => "The Offspring",
  'logo' => "https://pbs.twimg.com/profile_images/690269820109991936/5tATnKU8.jpg"})

artist3.save

artist4 = Artist.new({
  'name' => "Red Hot Chili Peppers",
  'logo' => "http://i.onionstatic.com/avclub/5794/45/16x9/960.jpg"})

artist4.save

artist5 = Artist.new({
  'name' => "The Beatles",
  'logo' => "http://img11.deviantart.net/65e5/i/2011/270/b/5/the_beatles_logo_by_w00den_sp00n-d4b5k3h.jpg"})

artist5.save

artist6 = Artist.new({
  'name' => "Sum 41",
  'logo' => "http://wallpapercave.com/wp/nRMUMdb.jpg"})

artist6.save

artist7 = Artist.new({
  'name' => "Madonna",
  'logo' => "http://divinamadonna.com/wp-content/themes/DivinaMadonna/images/logo.png"})

artist7.save

artist8 = Artist.new({
  'name' => "Ludwig Van Beethoven ",
  'logo' => "http://assets.classicfm.com/2009/04/ludwig-van-beethoven-1233160023.jpg"})

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
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 200,
  'quantity_sold' => 0
  })

album1.save

album2 = Album.new({
  'title' => 'Live in Rio',
  'genre_id' => genre1.id,
  'artist_id' => artist1.id,
  'price' => 20,
  'price_sold' => 40,
  'quantity' => 100,
  'quantity_sold' => 0
  })

album2.save

album3 = Album.new({
  'title' => 'G N R Lies',
  'genre_id' => genre1.id,
  'artist_id' => artist2.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 150,
  'quantity_sold' => 0
  })

album3.save

album4 = Album.new({
  'title' => 'All Killer No Filler',
  'genre_id' => genre2.id,
  'artist_id' => artist2.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 20,
  'quantity_sold' => 0
  })

album4.save

album5 = Album.new({
  'title' => 'G N R Lies',
  'genre_id' => genre1.id,
  'artist_id' => artist6.id,
  'price' => 15,
  'price_sold' => 30,
  'quantity' => 180,
  'quantity_sold' => 0
  })

album5.save

album6 = Album.new({
  'title' => 'Californication',
  'genre_id' => genre1.id,
  'artist_id' => artist4.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 210,
  'quantity_sold' => 0
  })

album6.save

album6 = Album.new({
  'title' => 'By the Way',
  'genre_id' => genre1.id,
  'artist_id' => artist4.id,
  'price' => 10,
  'price_sold' => 35,
  'quantity' => 180,
  'quantity_sold' => 0
  })

album6.save

album7 = Album.new({
  'title' => 'Help!',
  'genre_id' => genre1.id,
  'artist_id' => artist5.id,
  'price' => 5,
  'price_sold' => 20,
  'quantity' => 300,
  'quantity_sold' => 0
  })

album7.save

album8 = Album.new({
  'title' => 'The Beatles',
  'genre_id' => genre3.id,
  'artist_id' => artist5.id,
  'price' => 10,
  'price_sold' => 40,
  'quantity' => 500,
  'quantity_sold' => 0
  })

album8.save

album9 = Album.new({
  'title' => 'Abbey Road',
  'genre_id' => genre3.id,
  'artist_id' => artist5.id,
  'price' => 10,
  'price_sold' => 35,
  'quantity' => 260,
  'quantity_sold' => 0
  })

album9.save

album10 = Album.new({
  'title' => 'The Offspring',
  'genre_id' => genre1.id,
  'artist_id' => artist3.id,
  'price' => 15,
  'price_sold' => 30,
  'quantity' => 300,
  'quantity_sold' => 0
  })

album10.save

album11 = Album.new({
  'title' => 'Like a virgin',
  'genre_id' => genre4.id,
  'artist_id' => artist7.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 100,
  'quantity_sold' => 0
  })

album11.save 

album12 = Album.new({
  'title' => 'Like a prayer',
  'genre_id' => genre4.id,
  'artist_id' => artist7.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 80,
  'quantity_sold' => 0
  })

album12.save

album13 = Album.new({
  'title' => 'Symphony 9',
  'genre_id' => genre5.id,
  'artist_id' => artist8.id,
  'price' => 10,
  'price_sold' => 30,
  'quantity' => 210,
  'quantity_sold' => 0
  })

album13.save



binding.pry
nil


