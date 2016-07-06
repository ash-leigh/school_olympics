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

post '/athletes_events' do
  #CREATE
 @athletes_events = AthletesEvents.new( params )
 @athletes_events.save()
 redirect to('/athletes_events')
end

# get '/athletes_events/:id' do
#   #SHOW
#   @athlete_event = AthletesEvents.find(params[:id])
#   erb(:'athletes_events/show')
# end

# get '/athletes_events/:id/edit' do
#   #EDIT
#   @athlete_event = AthletesEvents.find(params[:id])
#   @athletes = Athlete.all()
#   @events = Event.all()
#   erb(:'athletes_events/edit')
# end

# put '/athletes_events/:id' do
#   #UPDATE
#  @athletes_events = AthletesEvents.update( params )
#  redirect to( "/athletes/#{params[:id]}" )
# end


# delete '/albums/:id' do
#   #DELETE
#   Album.destroy( params[:id] )
#   redirect to('/albums')
# end