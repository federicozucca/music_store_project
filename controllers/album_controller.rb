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

 #add an album
get '/music/albums/new' do
  @albums  = Album.all
  erb(:"albums/new")
end

#create a new album

post '/music/albums' do
  album = Album.new(params)
  album.save
  redirect to("/music/albums")
end

#show by id

get '/music/albums/:id' do
  @album = Album.find( params[:id] )
  erb(:"albums/show")
end

#delete an album
post '/music/albums/:id/delete' do
  Album.delete(params[:id])
  redirect to('/music/albums')
end
 


