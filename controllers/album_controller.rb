require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )

#all album
get '/music/album' do
  @album  = Album.all
  erb(:"album/index")
end
