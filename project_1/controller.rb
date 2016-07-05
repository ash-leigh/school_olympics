require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/athlete')
require_relative('./models/event')
require_relative('./models/nation')
require_relative('./controllers/athletes_controller')
require_relative('./controllers/events_controller')
require_relative('./controllers/nations_controller')

get '/' do
  erb(:'home')
end