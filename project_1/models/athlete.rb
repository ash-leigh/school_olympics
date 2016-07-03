require('pg')
require_relative('../db/sql_runner')
require_relative('nation')
require_relative('event')
require_relative('medal')
require_relative('medal_count')
require_relative('athletes_events')

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

  def update_details(name, nation_id)
    sql = "UPDATE athletes SET name = '#{name}', nation_id = '#{nation_id}' WHERE id = '#{id}'"
    run(sql)
  end

  def delete()
    sql = "DELETE FROM athletes WHERE id = #{id}"
    run(sql)
  end

  def events()
    sql = "SELECT events.* FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id}"
    return Event.map_items(sql)
  end

  def nation()
    sql = "SELECT nations.* FROM nations WHERE id = #{@nation_id}"
    nation = Nation.map_item(sql)
    return nation.name
  end

  # def profile()
  #   profile = {}
  # end

  # def remove_athletes_from_event()
  # end

  def gold_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 1"
    number = medal_count(sql)
  end

  def silver_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 2"
    return medal_count(sql)
  end

  def bronze_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 3"
    return medal_count(sql)
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