get '/events' do
  #INDEX
  query = params[:search]
  @events = Event.all(query)
  erb ( :'events/index' )
end

get '/events/:id' do
  #SHOW
  @event = Event.find(params[:id])
  erb(:'events/show')
end