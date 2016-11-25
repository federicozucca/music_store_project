require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )

#all album
get '/music/albums' do
  @albums  = Album.all
  erb(:"albums/index")
end

#show by id

get '/music/albums/:id' do
  @album = Album.find( params[:id] )
  erb(:"albums/show")
end

get '/music/albums/new' do
@album = Album.new(params)
erb(:"albums/new")
  end