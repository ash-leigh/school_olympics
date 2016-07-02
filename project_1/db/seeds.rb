require 'pry-byebug'

require_relative('../models/nation')
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/medal')
require_relative('../models/athletes_events')

nation_1 = Nation.new({'name' => 'Scotland'}).save

gold_medal = Medal.new("Gold")
silver_medal = Medal.new("Silver")
bronze_medal = Medal.new("Bronze")

athlete_1 = Athlete.new({'name' => 'Ashleigh', 'nation_id' => nation_1.id, 'medals' => [gold_medal]}).save
athlete_2 = Athlete.new({'name' => 'John', 'nation_id' => nation_1.id, 'medals' => [gold_medal]}).save
athlete_3 = Athlete.new({'name' => 'Shaun', 'nation_id' => nation_1.id, 'medals' => [gold_medal]}).save

event_1 = Event.new({'type' => 'egg and spoon race'}).save
event_2 = Event.new({'type' => 'hula hooping'}).save
event_3 = Event.new({'type' => 'three legged race'}).save

athletes_events_1 = AthletesEvents.new({'athlete_id' => athlete_1.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 1}).save
athletes_events_2 = AthletesEvents.new({'athlete_id' => athlete_1.id, 'event_id' => event_2.id, 'athlete_finishing_position' => 2}).save
athletes_events_3 = AthletesEvents.new({'athlete_id' => athlete_1.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 1}).save

binding.pry
nil

