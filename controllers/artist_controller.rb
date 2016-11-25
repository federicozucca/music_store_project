require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

#all artist
get '/music/artist' do
  @artist = Artist.all
  erb(:"artist/index")
end

