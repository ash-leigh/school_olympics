require('pg')
require_relative('../db/sql_runner')
require_relative('athlete')

class Event

  attr_reader :id, :type

  def initialize(options)
    @id = options['id'].to_i
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO events (type) VALUES ('#{@type}') RETURNING *"
    event = run(sql).first
    result = Event.new(event)
    return result
  end

  def athletes()
    sql = "SELECT athletes.* FROM athletes INNER JOIN athletes_events ON athletes_events.athlete_id = athletes.id WHERE athletes_events.event_id = #{id}"
    return Athlete.map_items(sql)
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