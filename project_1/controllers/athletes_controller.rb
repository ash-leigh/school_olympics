get '/athletes' do
  @athletes = Athlete.all()
  erb(:'athletes/index')
end

# get '/albums/new' do
#   @artists = Artist.all
#   erb(:'albums/new')
# end

# post '/albums' do
#   @album = Album.new(params)
#   @album.save()
#   erb(:'albums/create')
# end

get '/athletes/:id' do
  @athlete = Athlete.find(params[:id])
  erb(:'athletes/show')
end

# post '/albums/:id/delete' do
#   Album.destroy(params[:id])
#   redirect to("/albums")
# end

# get '/albums/:id/edit' do
#   @album = Album.find(params[:id])
#   @artists = Artist.all()
#   erb(:'albums/edit')
# end

# post '/albums/:id' do
#   @album = Album.update(params)
#   redirect to("/albums/#{params[:id]}")
# end