require 'pry-byebug'

require_relative('../models/nation')
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/athletes_events')

nation_1 = Nation.new({'name' => 'Scotland'}).save
nation_2 = Nation.new({'name' => 'Ireland'}).save
nation_3 = Nation.new({'name' => 'England'}).save
nation_4 = Nation.new({'name' => 'Wales'}).save


athlete_1 = Athlete.new({'name' => 'Ashleigh', 'avatar_url' => '/student_avatars/rio_avatars.png', 'nation_id' => nation_1.id}).save
athlete_2 = Athlete.new({'name' => 'John', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_1.id}).save
athlete_3 = Athlete.new({'name' => 'Shaun', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_1.id}).save

event_1 = Event.new({'type' => 'sport', 'name' => 'egg and spoon race'}).save
event_2 = Event.new({'type' => 'sport', 'name' => 'hula hooping'}).save
event_3 = Event.new({'type' => 'sport', 'name' => 'three legged race'}).save

athletes_events_1 = AthletesEvents.new({'athlete_id' => athlete_1.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 1}).save
athletes_events_2 = AthletesEvents.new({'athlete_id' => athlete_2.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 3}).save
athletes_events_3 = AthletesEvents.new({'athlete_id' => athlete_3.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 2}).save


binding.pry
nil

