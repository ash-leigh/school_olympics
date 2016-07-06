get '/athletes_events' do
  #INDEX
  @nations = Nation.all_profiles_ordered
  erb (:'athletes_events/index')
end

# get '/athletes/new' do
#   #NEW
#   @nations = Nation.all()
#   erb(:'athletes/new')
# end

# post '/athletes' do
#   #CREATE
#  @athlete = Athlete.new( params )
#  @athlete.save()
#  redirect to('/athletes/create')
# end

# get '/athletes/create' do
#   #CREATE
#   erb(:'athletes/create')
# end

# get '/athletes/:id' do
#   #SHOW
#   @athlete = Athlete.find(params[:id])
#   erb(:'athletes/show')
# end

# get '/athletes/:id/edit' do
#   #EDIT
#   @athlete = Athlete.find( params[:id] )
#   @nations = Nation.all()
#   erb( :'athletes/edit' )
# end

# put '/athletes/:id' do
#   #UPDATE
#  @athlete = Athlete.update( params )
#  redirect to( "/athletes/#{params[:id]}" )
# end

# delete '/albums/:id' do
#   #DELETE
#   Album.destroy( params[:id] )
#   redirect to('/albums')
# end