require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/album_controller')
require_relative('controllers/artist_controller')
require_relative('controllers/genre_controller')
require_relative('controllers/inventory_controller')
require_relative('controllers/other_functions_controller')
require_relative('controllers/sales_controller')

get '/music' do
  @albums  = Album.all
    erb( :index )
end
