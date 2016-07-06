require 'pry-byebug'

require_relative('../models/nation')
require_relative('../models/athlete')
require_relative('../models/event')
require_relative('../models/athletes_events')

nation_1 = Nation.new({'name' => 'Abbeyhill Primary'}).save
nation_2 = Nation.new({'name' => 'Bruntsfield Primary'}).save
nation_3 = Nation.new({'name' => 'Dalry Primary'}).save
nation_4 = Nation.new({'name' => 'Fox Covert RC Primary'}).save
nation_5 = Nation.new({'name' => 'Hermitage Park Primary'}).save
nation_6 = Nation.new({'name' => 'James Gillespies Primary'}).save
nation_7 = Nation.new({'name' => 'Oxgangs Primary'}).save
nation_8 = Nation.new({'name' => 'Prestonfield Primary'}).save
nation_9 = Nation.new({'name' => 'Roseburn Primary'}).save
nation_10 = Nation.new({'name' => 'Ratho Primary'}).save
nation_11 = Nation.new({'name' => 'St Marks RC Primary'}).save
nation_12 = Nation.new({'name' => 'Tollcross Primary'}).save

athlete_1 = Athlete.new({'name' => 'Amelia', 'avatar_url' => '/student_avatars/rio_avatars.png', 'nation_id' => nation_1.id}).save
athlete_2 = Athlete.new({'name' => 'Oliver', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_1.id}).save
athlete_3 = Athlete.new({'name' => 'Isla', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_1.id}).save
athlete_4 = Athlete.new({'name' => 'Jack', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_1.id}).save
athlete_5 = Athlete.new({'name' => 'Robyn', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_1.id}).save
athlete_6 = Athlete.new({'name' => 'Harry', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_1.id}).save
athlete_7 = Athlete.new({'name' => 'Julia', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_2.id}).save
athlete_8 = Athlete.new({'name' => 'Alfie', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_2.id}).save
athlete_9 = Athlete.new({'name' => 'Harper', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_2.id}).save
athlete_10 = Athlete.new({'name' => 'Freddie', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_2.id}).save
athlete_11 = Athlete.new({'name' => 'Hollie', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_2.id}).save
athlete_12 = Athlete.new({'name' => 'Lucas', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_2.id}).save
athlete_13 = Athlete.new({'name' => 'Amy', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_3.id}).save
athlete_14 = Athlete.new({'name' => 'Jamie', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_3.id}).save
athlete_15 = Athlete.new({'name' => 'Lucy', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_3.id}).save
athlete_16 = Athlete.new({'name' => 'David', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_3.id}).save
athlete_17 = Athlete.new({'name' => 'Anna', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_3.id}).save
athlete_18 = Athlete.new({'name' => 'Caleb', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_3.id}).save
athlete_19 = Athlete.new({'name' => 'Freya', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_4.id}).save
athlete_20 = Athlete.new({'name' => 'Mohammad', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_4.id}).save
athlete_21 = Athlete.new({'name' => 'Imogen', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_4.id}).save
athlete_22 = Athlete.new({'name' => 'Noah', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_4.id}).save
athlete_23 = Athlete.new({'name' => 'Maryam', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_4.id}).save
athlete_24 = Athlete.new({'name' => 'Ethan', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_4.id}).save
athlete_25 = Athlete.new({'name' => 'Katie', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_5.id}).save
athlete_26 = Athlete.new({'name' => 'Finley', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_5.id}).save
athlete_27 = Athlete.new({'name' => 'Gracie', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_5.id}).save
athlete_28 = Athlete.new({'name' => 'Mason', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_5.id}).save
athlete_29 = Athlete.new({'name' => 'Pheobe', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_5.id}).save
athlete_30 = Athlete.new({'name' => 'Adam', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_6.id}).save
athlete_31 = Athlete.new({'name' => 'Willow', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_6.id}).save
athlete_32 = Athlete.new({'name' => 'Aaron', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_6.id}).save
athlete_33 = Athlete.new({'name' => 'Zoe', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_6.id}).save
athlete_34 = Athlete.new({'name' => 'Robert', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_6.id}).save
athlete_35 = Athlete.new({'name' => 'Sofia', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_6.id}).save
athlete_36 = Athlete.new({'name' => 'Conor', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_7.id}).save
athlete_37 = Athlete.new({'name' => 'Millie', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_7.id}).save
athlete_38 = Athlete.new({'name' => 'Layla', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_7.id}).save
athlete_39 = Athlete.new({'name' => 'Rory', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_7.id}).save
athlete_40 = Athlete.new({'name' => 'Alex', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_7.id}).save
athlete_41 = Athlete.new({'name' => 'Gabriel', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_7.id}).save
athlete_42 = Athlete.new({'name' => 'Dexter', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_8.id}).save
athlete_43 = Athlete.new({'name' => 'Erin', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_8.id}).save
athlete_44 = Athlete.new({'name' => 'Lily', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_8.id}).save
athlete_45 = Athlete.new({'name' => 'Ellie', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_8.id}).save
athlete_46 = Athlete.new({'name' => 'Rose', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_8.id}).save
athlete_47 = Athlete.new({'name' => 'Bethany', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_8.id}).save
athlete_48 = Athlete.new({'name' => 'Dylan', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_9.id}).save
athlete_49 = Athlete.new({'name' => 'Riley', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_9.id}).save
athlete_50 = Athlete.new({'name' => 'Lacey', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_9.id}).save
athlete_51 = Athlete.new({'name' => 'Zara', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_9.id}).save
athlete_52 = Athlete.new({'name' => 'Hannah', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_9.id}).save
athlete_53 = Athlete.new({'name' => 'Summer', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_9.id}).save
athlete_54 = Athlete.new({'name' => 'Ellis', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_10.id}).save
athlete_55 = Athlete.new({'name' => 'Ollie', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_10.id}).save
athlete_56 = Athlete.new({'name' => 'Ryan', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_10.id}).save
athlete_57 = Athlete.new({'name' => 'Louis', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_10.id}).save
athlete_58 = Athlete.new({'name' => 'Ivy', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_10.id}).save
athlete_59 = Athlete.new({'name' => 'Esme', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_10.id}).save
athlete_60 = Athlete.new({'name' => 'Michael', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_11.id}).save
athlete_61 = Athlete.new({'name' => 'Edward', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_11.id}).save
athlete_62 = Athlete.new({'name' => 'Harriet', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_11.id}).save
athlete_63 = Athlete.new({'name' => 'Amber', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_11.id}).save
athlete_64 = Athlete.new({'name' => 'Emma', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_11.id}).save
athlete_65 = Athlete.new({'name' => 'Thomas', 'avatar_url' => '/student_avatars/rio_avatars_1.png', 'nation_id' => nation_11.id}).save
athlete_66 = Athlete.new({'name' => 'Charlie', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_12.id}).save
athlete_67 = Athlete.new({'name' => 'Brooke', 'avatar_url' => '/student_avatars/rio_avatars_2.png', 'nation_id' => nation_12.id}).save
athlete_68 = Athlete.new({'name' => 'Logan', 'avatar_url' => '/student_avatars/rio_avatars_3.png', 'nation_id' => nation_12.id}).save
athlete_69 = Athlete.new({'name' => 'Julia', 'avatar_url' => '/student_avatars/rio_avatars_4.png', 'nation_id' => nation_12.id}).save
athlete_70 = Athlete.new({'name' => 'Beatrice', 'avatar_url' => '/student_avatars/rio_avatars_5.png', 'nation_id' => nation_12.id}).save
athlete_71 = Athlete.new({'name' => 'Callum', 'avatar_url' => '/student_avatars/rio_avatars_6.png', 'nation_id' => nation_12.id}).save
athlete_72 = Athlete.new({'name' => 'Elliot', 'avatar_url' => '/student_avatars/rio_avatars_7.png', 'nation_id' => nation_12.id}).save

event_1 = Event.new({'type' => 'sports challenge', 'name' => 'Choreograph a dance for the opening ceremonies'}).save
event_2 = Event.new({'type' => 'sports challenge', 'name' => 'Olympics assult course'}).save
event_3 = Event.new({'type' => 'sports challenge', 'name' => 'Invent and demonstrate new sport'}).save
event_4 = Event.new({'type' => 'creative challenge', 'name' => 'Design a flag'}).save
event_5 = Event.new({'type' => 'creative challenge', 'name' => 'Write a national anthem poem'}).save
event_6 = Event.new({'type' => 'creative challenge', 'name' => 'Design an olympic team uniform'}).save
event_7 = Event.new({'type' => 'math challenge', 'name' => 'How much pasta does team GB eat?'}).save
event_8 = Event.new({'type' => 'math challenge', 'name' => 'Find the average age of gold medalists'}).save
event_9 = Event.new({'type' => 'math challenge', 'name' => '10 years of medals'}).save
event_10 = Event.new({'type' => 'science challenge', 'name' => 'Olympics anatomy challenge'}).save
event_11 = Event.new({'type' => 'science challenge', 'name' => 'Olympic medal metals'}).save
event_12 = Event.new({'type' => 'science challenge', 'name' => 'Calorimetry'}).save
event_13 = Event.new({'type' => 'digtal challenge', 'name' => '#Olympics'}).save
event_14 = Event.new({'type' => 'digtal challenge', 'name' => 'Design olympic app'}).save
event_15 = Event.new({'type' => 'digtal challenge', 'name' => 'Design training machine'}).save
event_16 = Event.new({'type' => 'geography challenge', 'name' => 'Games across the globe'}).save
event_17 = Event.new({'type' => 'geography challenge', 'name' => 'Olympic weather'}).save
event_18 = Event.new({'type' => 'geography challenge', 'name' => 'Olympic tourism'}).save

athletes_events_1 = AthletesEvents.new({'athlete_id' => athlete_1.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 1}).save
athletes_events_2 = AthletesEvents.new({'athlete_id' => athlete_2.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 3}).save
athletes_events_3 = AthletesEvents.new({'athlete_id' => athlete_3.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 2}).save
athletes_events_4 = AthletesEvents.new({'athlete_id' => athlete_4.id, 'event_id' => event_1.id, 'athlete_finishing_position' => 4}).save

athletes_events_5 = AthletesEvents.new({'athlete_id' => athlete_5.id, 'event_id' => event_2.id, 'athlete_finishing_position' => 1}).save
athletes_events_6 = AthletesEvents.new({'athlete_id' => athlete_6.id, 'event_id' => event_2.id, 'athlete_finishing_position' => 2}).save

athletes_events_7 = AthletesEvents.new({'athlete_id' => athlete_7.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 1}).save
athletes_events_8 = AthletesEvents.new({'athlete_id' => athlete_8.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 2}).save
athletes_events_9 = AthletesEvents.new({'athlete_id' => athlete_9.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 3}).save
athletes_events_10 = AthletesEvents.new({'athlete_id' => athlete_10.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 4}).save
athletes_events_11 = AthletesEvents.new({'athlete_id' => athlete_11.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 5}).save
athletes_events_12 = AthletesEvents.new({'athlete_id' => athlete_12.id, 'event_id' => event_3.id, 'athlete_finishing_position' => 6}).save

athletes_events_13 = AthletesEvents.new({'athlete_id' => athlete_7.id, 'event_id' => event_4.id, 'athlete_finishing_position' => 1}).save
athletes_events_14 = AthletesEvents.new({'athlete_id' => athlete_8.id, 'event_id' => event_4.id, 'athlete_finishing_position' => 2}).save
athletes_events_15 = AthletesEvents.new({'athlete_id' => athlete_9.id, 'event_id' => event_4.id, 'athlete_finishing_position' => 3}).save
athletes_events_16 = AthletesEvents.new({'athlete_id' => athlete_10.id, 'event_id' => event_4.id, 'athlete_finishing_position' => 4}).save

athletes_events_17 = AthletesEvents.new({'athlete_id' => athlete_13.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 1}).save
athletes_events_18 = AthletesEvents.new({'athlete_id' => athlete_14.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 2}).save
athletes_events_19 = AthletesEvents.new({'athlete_id' => athlete_15.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 3}).save
athletes_events_20 = AthletesEvents.new({'athlete_id' => athlete_16.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 4}).save
athletes_events_21 = AthletesEvents.new({'athlete_id' => athlete_17.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 5}).save
athletes_events_22 = AthletesEvents.new({'athlete_id' => athlete_18.id, 'event_id' => event_5.id, 'athlete_finishing_position' => 6}).save

athletes_events_23 = AthletesEvents.new({'athlete_id' => athlete_19.id, 'event_id' => event_6.id, 'athlete_finishing_position' => 1}).save
athletes_events_24 = AthletesEvents.new({'athlete_id' => athlete_20.id, 'event_id' => event_6.id, 'athlete_finishing_position' => 2}).save
athletes_events_25 = AthletesEvents.new({'athlete_id' => athlete_21.id, 'event_id' => event_6.id, 'athlete_finishing_position' => 3}).save

athletes_events_30 = AthletesEvents.new({'athlete_id' => athlete_19.id, 'event_id' => event_7.id, 'athlete_finishing_position' => 1}).save
athletes_events_31 = AthletesEvents.new({'athlete_id' => athlete_20.id, 'event_id' => event_7.id, 'athlete_finishing_position' => 2}).save
athletes_events_32 = AthletesEvents.new({'athlete_id' => athlete_21.id, 'event_id' => event_7.id, 'athlete_finishing_position' => 3}).save
athletes_events_33 = AthletesEvents.new({'athlete_id' => athlete_22.id, 'event_id' => event_7.id, 'athlete_finishing_position' => 4}).save

athletes_events_34 = AthletesEvents.new({'athlete_id' => athlete_23.id, 'event_id' => event_8.id, 'athlete_finishing_position' => 1}).save
athletes_events_35 = AthletesEvents.new({'athlete_id' => athlete_24.id, 'event_id' => event_8.id, 'athlete_finishing_position' => 2}).save

athletes_events_36 = AthletesEvents.new({'athlete_id' => athlete_25.id, 'event_id' => event_9.id, 'athlete_finishing_position' => 1}).save
athletes_events_37 = AthletesEvents.new({'athlete_id' => athlete_26.id, 'event_id' => event_9.id, 'athlete_finishing_position' => 2}).save
athletes_events_38 = AthletesEvents.new({'athlete_id' => athlete_27.id, 'event_id' => event_9.id, 'athlete_finishing_position' => 3}).save

athletes_events_39 = AthletesEvents.new({'athlete_id' => athlete_28.id, 'event_id' => event_16.id, 'athlete_finishing_position' => 1}).save
athletes_events_40 = AthletesEvents.new({'athlete_id' => athlete_29.id, 'event_id' => event_16.id, 'athlete_finishing_position' => 2}).save
athletes_events_41 = AthletesEvents.new({'athlete_id' => athlete_30.id, 'event_id' => event_16.id, 'athlete_finishing_position' => 3}).save

athletes_events_42 = AthletesEvents.new({'athlete_id' => athlete_42.id, 'event_id' => event_10.id, 'athlete_finishing_position' => 1}).save
athletes_events_42 = AthletesEvents.new({'athlete_id' => athlete_43.id, 'event_id' => event_10.id, 'athlete_finishing_position' => 2}).save
athletes_events_42 = AthletesEvents.new({'athlete_id' => athlete_44.id, 'event_id' => event_10.id, 'athlete_finishing_position' => 3}).save
athletes_events_42 = AthletesEvents.new({'athlete_id' => athlete_45.id, 'event_id' => event_10.id, 'athlete_finishing_position' => 4}).save

athletes_events_43 = AthletesEvents.new({'athlete_id' => athlete_42.id, 'event_id' => event_11.id, 'athlete_finishing_position' => 1}).save
athletes_events_44 = AthletesEvents.new({'athlete_id' => athlete_43.id, 'event_id' => event_11.id, 'athlete_finishing_position' => 2}).save
athletes_events_45 = AthletesEvents.new({'athlete_id' => athlete_44.id, 'event_id' => event_11.id, 'athlete_finishing_position' => 3}).save

athletes_events_46 = AthletesEvents.new({'athlete_id' => athlete_42.id, 'event_id' => event_12.id, 'athlete_finishing_position' => 1}).save
athletes_events_47 = AthletesEvents.new({'athlete_id' => athlete_43.id, 'event_id' => event_12.id, 'athlete_finishing_position' => 2}).save
athletes_events_48 = AthletesEvents.new({'athlete_id' => athlete_44.id, 'event_id' => event_12.id, 'athlete_finishing_position' => 3}).save

athletes_events_49 = AthletesEvents.new({'athlete_id' => athlete_42.id, 'event_id' => event_13.id, 'athlete_finishing_position' => 1}).save
athletes_events_50 = AthletesEvents.new({'athlete_id' => athlete_43.id, 'event_id' => event_13.id, 'athlete_finishing_position' => 2}).save

athletes_events_51 = AthletesEvents.new({'athlete_id' => athlete_54.id, 'event_id' => event_14.id, 'athlete_finishing_position' => 1}).save
athletes_events_52 = AthletesEvents.new({'athlete_id' => athlete_55.id, 'event_id' => event_14.id, 'athlete_finishing_position' => 2}).save

athletes_events_53 = AthletesEvents.new({'athlete_id' => athlete_60.id, 'event_id' => event_15.id, 'athlete_finishing_position' => 1}).save
athletes_events_54 = AthletesEvents.new({'athlete_id' => athlete_61.id, 'event_id' => event_15.id, 'athlete_finishing_position' => 2}).save
athletes_events_55 = AthletesEvents.new({'athlete_id' => athlete_62.id, 'event_id' => event_15.id, 'athlete_finishing_position' => 3}).save

athletes_events_56 = AthletesEvents.new({'athlete_id' => athlete_62.id, 'event_id' => event_17.id, 'athlete_finishing_position' => 1}).save
athletes_events_57 = AthletesEvents.new({'athlete_id' => athlete_63.id, 'event_id' => event_17.id, 'athlete_finishing_position' => 2}).save

athletes_events_58 = AthletesEvents.new({'athlete_id' => athlete_71.id, 'event_id' => event_18.id, 'athlete_finishing_position' => 1}).save
athletes_events_59 = AthletesEvents.new({'athlete_id' => athlete_72.id, 'event_id' => event_18.id, 'athlete_finishing_position' => 2}).save


binding.pry
nil

