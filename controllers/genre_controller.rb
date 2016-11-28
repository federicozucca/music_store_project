require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/artist.rb' )
require_relative( '../models/album.rb' )

#all the genres
get '/music/genres' do
  @genres = Genre.all
  erb(:"genres/index")
end

 #add a new genre
get '/music/genres/new' do
  @genres  = Genre.all
  erb(:"genres/new")
end

#create a new type of genre

post '/music/genres' do
  genre = Genre.new(params)
  genre.save
  redirect to("/music/genres")
end

#show by id

get '/music/genres/:id' do
  @genre = Genre.find( params[:id] )
  erb(:"genres/show")
end

#delete an artist
post '/music/genres/:id/delete' do
  Genre.delete(params[:id])
  redirect to('/music/genres')
end
 
 #show the edit artist form
 get '/music/genres/:id/edit' do
   @genre = Genre.find( params[:id])
 erb(:"genres/edit")
 end

 #update the artist edited
 post '/music/genres/:id' do
 Genre.update( params )
 redirect to("/music/genres/#{params[:id]}")
 end




