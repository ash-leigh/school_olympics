get '/nations' do
  #INDEX
  query = params[:search]
  @nations = Nation.all(query)
  erb ( :'nations/index' )
end

get '/nations/:id' do
  #SHOW
  @nation = Nation.find(params[:id])
  erb(:'nations/show')
end