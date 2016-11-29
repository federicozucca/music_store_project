require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/album.rb' )
require_relative( '../models/artist.rb' )
require_relative( '../models/genre.rb' )

#all album
get '/music/albums' do
  @genres = Genre.all
  @albums  = Album.all
  erb(:"albums/index")
end

 #add an album
get '/music/albums/new' do
  @genres = Genre.all
  @artists = Artist.all
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
 
 #show the edit album form
 get '/music/albums/:id/edit' do
   @genres = Genre.all()
   @artists = Artist.all()
   @album = Album.find( params[:id])
 erb(:"albums/edit")
 end

 #update the album edited
 post '/music/albums/:id' do
 Album.update( params )
 redirect to("/music/albums/#{params[:id]}")
 end

 #show the edit album form
 get '/music/sales' do
   @genres = Genre.all()
   @artists = Artist.all()
   @album = Album.all()
 erb(:"albums/sales")
 end



