get '/athletes' do
  #INDEX
  query = params[:search]
  @athletes = Athlete.all(query)
  erb (:'athletes/index')
end

get '/athletes/new' do
  #NEW
  @nations = Nation.all()
  erb(:'athletes/new')
end

post '/athletes' do
  #CREATE
 @athlete = Athlete.new( params )
 @athlete.save()
 redirect to('/athletes')
end

get '/athletes/:id' do
  #SHOW
  @athlete = Athlete.find(params[:id])
  erb(:'athletes/show')
end

get '/athletes/:id/edit' do
  #EDIT
  @athlete = Athlete.find( params[:id] )
  @nations = Nation.all()
  erb( :'athletes/edit' )
end

put '/athletes/:id' do
  #UPDATE
 @athlete = Athlete.update( params )
 redirect to( "/athletes/#{params[:id]}" )
end

delete '/athletes/:id' do
  #DELETE
  Athlete.delete( params[:id] )
  redirect to('/athletes')
end