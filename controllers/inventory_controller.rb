require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/genre.rb' )

#all stock
get '/music/inventory' do
  @artists = Artist.all()
  @genres = Genre.all()
  @albums  = Album.all()
  erb(:"inventory/index")
end
