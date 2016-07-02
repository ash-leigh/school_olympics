require('pg')
require_relative('../db/sql_runner')
require_relative('event')

class Athlete

  attr_reader :id, :name, :medals, :nation_id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @medals = options['medals']
    @nation_id = options['nation_id'].to_i
  end

  def save()
    sql = "INSERT INTO athletes (name, medals, nation_id) VALUES ('#{@name}', ARRAY['#{@medals}'], '#{@nation_id}') RETURNING *"
    athlete = run(sql).first
    result = Athlete.new(athlete)
    return result
  end

  def events()
    sql = "SELECT events.* FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id}"
    return Event.map_items(sql)
  end

  def self.all()
    sql = "SELECT * FROM athletes"
    return Athlete.map_items(sql)
  end

  def self.map_items(sql)
    athletes = run(sql)
    result = athletes.map {|athlete| Athlete.new(athlete)}
    return result
  end

  def self.map_item(sql)
    result = Athlete.map_items(sql)
    return result.first
  end
end