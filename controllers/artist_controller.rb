require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

#all artist
get '/music/artists' do
  @artists = Artist.all
  erb(:"artists/index")
end


 #add an artist
get '/music/artists/new' do
  @artists  = Artist.all
  erb(:"artists/new")
end

#create a new album

post '/music/artists' do
  artist = Artist.new(params)
  artist.save
  redirect to("/music/artists")
end

#show by id

get '/music/artists/:id' do
  @artist = Artist.find( params[:id] )
  erb(:"artists/show")
end

#delete an album
post '/music/artists/:id/delete' do
  Artist.delete(params[:id])
  redirect to('/music/artists')
end
 
 #show the edit album form
 get '/music/artists/:id/edit' do
   @artist = Artist.find( params[:id])
 erb(:"albums/edit")
 end

 #update the album edited
 post '/music/artists/:id' do
 Artist.update( params )
 redirect to("/music/artists/#{params[:id]}")
 end




