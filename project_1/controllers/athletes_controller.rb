get '/athletes' do
  #INDEX
  query = params[:search]
  @athletes = Athlete.all(query)
  erb ( :'athletes/index' )
end

# get '/albums/new' do
#   #NEW
#   @artists = Artist.all()
#   erb( :'albums/new' )
# end

# post '/albums' do
#   #CREATE
#  @album = Album.new( params )
#  @album.save()
#  redirect to('/albums')
# end


get '/athletes/:id' do
  #SHOW
  @athlete = Athlete.find(params[:id])
  erb(:'athletes/show')
end

# get '/albums/:id/edit' do
#   #EDIT
#   @album = Album.find( params[:id] )
#   @artists = Artist.all()
#   erb( :'albums/edit' )
# end

# put '/albums/:id' do
#   #UPDATE
#  @album = Album.update( params )
#  redirect to( "/albums/#{params[:id]}" )
# end

# delete '/albums/:id' do
#   #DELETE
#   Album.destroy( params[:id] )
#   redirect to('/albums')
# end