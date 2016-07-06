get '/athletes_events' do
  #INDEX
  @nations = Nation.all_profiles_ordered
  erb (:'athletes_events/index')
end

get '/athletes_events/new' do
  #NEW
  @athletes = Athlete.all()
  @events = Event.all()
  erb(:'athletes_events/new')
end

post '/athletes' do
  #CREATE
 @athlete = Athlete.new( params )
 @athlete.save()
 redirect to('/athletes/create')
end

get '/athletes/create' do
  #CREATE
  erb(:'athletes/create')
end

get '/athletes_events/:id' do
  #SHOW
  @athlete = Athlete.find(params[:id])
  erb(:'athletes/show')
end

get '/athletes_events/:id/edit' do
  #EDIT
  @athletes = Athlete.all()
  @events = Event.all()
  erb(:'athletes_events/edit')
end

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