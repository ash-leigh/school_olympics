get '/nations' do
  #INDEX
  query = params[:search]
  @nations = Nation.all(query)
  erb ( :'nations/index' )
end

get '/nations/new' do
  #NEW
  erb(:'nations/new')
end

post '/nations' do
  #CREATE
 @nation = Nation.new( params )
 @nation.save()
 redirect to('/nations/create')
end

get '/nations/create' do
  #CREATE
  erb(:'nations/create')
end

get '/nations/:id' do
  #SHOW
  @nation = Nation.find(params[:id])
  erb(:'nations/show')
end