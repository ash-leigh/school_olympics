require('pg')
require_relative('../db/sql_runner')
require_relative('nation')
require_relative('event')
require_relative('medal_count')
require_relative('athletes_events')

class Athlete

  attr_reader :id, :name, :avatar_url, :nation_id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @avatar_url = options['avatar_url']
    @nation_id = options['nation_id'].to_i
  end

  def save()
    sql = "INSERT INTO athletes (name, avatar_url, nation_id) VALUES ('#{@name}', '#{@avatar_url}', '#{@nation_id}') RETURNING *"
    athlete = run(sql).first
    result = Athlete.new(athlete)
    return result
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

  def number_gold_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 1"
    number = medal_count(sql)
  end

  def gold_medal_events()
    sql = "SELECT events.* FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 1"
    return Event.map_items(sql)
  end

  def number_silver_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 2"
    return medal_count(sql)
  end

  def silver_medal_events()
    sql = "SELECT events.* FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 2"
    return Event.map_items(sql)
  end

  def number_bronze_medals()
    sql = "SELECT COUNT(events.*) FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 3"
    return medal_count(sql)
  end

  def bronze_medal_events()
    sql = "SELECT events.* FROM events INNER JOIN athletes_events ON athletes_events.event_id = events.id WHERE athletes_events.athlete_id = #{id} AND athletes_events.athlete_finishing_position = 3"
    return Event.map_items(sql)
  end

  def total_medals()
    total_medals = number_gold_medals() + number_silver_medals() + number_bronze_medals()
    return total_medals
  end

  def profile()
    profile = {"name" => @name, "avatar_url" => @avatar_url, "nation" => nation(), "events" => events(), "gold_medals" => number_gold_medals, "gold_medal_events" => gold_medal_events(), "silver_medals" => number_silver_medals, "silver_medal_events" => silver_medal_events(), "bronze_medals" => number_bronze_medals, "bronze_medal_events" => bronze_medal_events(), "total_medals" => total_medals()}
    return profile
  end

  def self.delete(id)
    sql = "DELETE FROM athletes WHERE id = #{id}"
    run(sql)
  end

  def self.update(options)
    run("UPDATE athletes SET name='#{options['name']}', avatar_url='#{options['avatar_url']}', nation_id=#{options['nation_id']} WHERE id=#{options['id']}")
  end

  def self.find(id)
    sql = "SELECT * FROM athletes WHERE id=#{id}"
    athlete = run(sql).first
    result = Athlete.new(athlete)
    return result
  end

  def self.all(query = "")
    query = query.to_s
    sql = "SELECT * FROM athletes"
    sql = sql + " WHERE name LIKE '%#{query}%'" unless query.empty?
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