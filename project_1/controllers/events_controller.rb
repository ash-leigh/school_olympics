get '/events/:id' do
  @event = Event.find(params[:id])
  erb(:'events/show')
end