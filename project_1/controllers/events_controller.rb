get '/events' do
  #INDEX
  query = params[:search]
  @events = Event.all(query)
  erb ( :'events/index' )
end

get '/events/new' do
  #NEW
  erb(:'events/new')
end

post '/events' do
  #CREATE
 @event = Event.new( params )
 @event.save()
 redirect to('/events/create')
end

get '/events/create' do
  #CREATE
  erb(:'events/create')
end

get '/events/:id' do
  #SHOW
  @event = Event.find(params[:id])
  erb(:'events/show')
end

get '/events/:id/edit' do
  #EDIT
  @event =  Event.find( params[:id] )
  erb( :'events/edit' )
end

put '/events/:id' do
  #UPDATE
 @event = Event.update( params )
 redirect to( "/events/#{params[:id]}" )
end