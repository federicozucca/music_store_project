require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )

#all album
get '/music/albums' do
  @albums  = Album.all
  erb(:"album/index")
end

#show by id

get '/music/albums/:id' do
  @album = Album.find( params[:id] )
  erb(:"album/show")
end