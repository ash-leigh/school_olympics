require('pg')
require_relative('../db/sql_runner')
require_relative('athlete')

class Event

  attr_reader :id, :type, :name

  def initialize(options)
    @id = options['id'].to_i
    @type = options['type']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO events (type, name) VALUES ('#{@type}', '#{name}') RETURNING *"
    event = run(sql).first
    result = Event.new(event)
    return result
  end

  def update_type(type, name)
    sql = "UPDATE events SET type = '#{type}' name = '#{name}' WHERE id = '#{id}'"
    run(sql)
  end

  def delete()
    sql = "DELETE FROM events WHERE id = #{id}"
    run(sql)
  end

  def athletes()
    sql = "SELECT athletes.* FROM athletes INNER JOIN athletes_events ON athletes_events.athlete_id = athletes.id WHERE athletes_events.event_id = #{id} ORDER BY athletes_events.athlete_finishing_position ASC"
    return Athlete.map_items(sql)
  end

  # def first_place()
  #   sql = "SELECT athletes.* FROM athletes INNER JOIN athletes_events ON athletes_events.athlete_id = athletes.id WHERE athletes_events.event_id = #{id} AND athletes_events.athlete_finishing_position = 1"
  #   athlete = Athlete.map_item(sql)
    
  # end

  # def second_place()
  #   sql = "SELECT athletes.* FROM athletes INNER JOIN athletes_events ON athletes_events.athlete_id = athletes.id WHERE athletes_events.event_id = #{id} AND athletes_events.athlete_finishing_position = 2"
  #   return Athlete.map_item(sql)
  # end

  # def third_place()
  #   sql = "SELECT athletes.* FROM athletes INNER JOIN athletes_events ON athletes_events.athlete_id = athletes.id WHERE athletes_events.event_id = #{id} AND athletes_events.athlete_finishing_position = 3"
  #   return Athlete.map_item(sql)
  # end

  def profile()
    profile = {"type" => @type, "name" => @name, "athletes" => athletes()}
    return profile
  end

  def self.find(id)
    sql = "SELECT * FROM events WHERE id=#{id}"
    event = run(sql).first
    result = Event.new(athlete)
    return result
  end

  def self.all()
    sql = "SELECT * FROM events"
    return Event.map_items(sql)
  end

  def self.map_items(sql)
    events = run(sql)
    result = events.map {|event| Event.new(event)}
    return result
  end

  def self.map_item(sql)
    result = Event.map_items(sql)
    return result.first
  end
end