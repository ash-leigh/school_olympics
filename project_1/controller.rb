require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/athlete')
require_relative('./models/event')
require_relative('./controllers/athletes_controller')
require_relative('./controllers/events_controller')