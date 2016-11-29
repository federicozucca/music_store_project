#add stock 

post '/music/buy' do
  @album = Album.find( params[:id] )
  @album.buy(params[:quantity].to_i)
redirect to("/music/inventory")
end

#sell stock 

post '/music/sell' do
  @album = Album.find( params[:id] )
  @album.sell(params[:quantity].to_i)
redirect to("/music/inventory")
end