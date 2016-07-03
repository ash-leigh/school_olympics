require('pg')
require_relative('../db/sql_runner')
require_relative('medal_count')
require_relative('athlete')
require_relative('event')

class Nation

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO nations (name) VALUES ('#{@name}') RETURNING *"
    nation = run(sql).first
    result = Nation.new(nation)
    return result
  end

  def update_name(name)
    sql = "UPDATE nations SET name = '#{name}' WHERE id = '#{id}'"
    run(sql)
  end

  def delete()
    sql = "DELETE FROM nations WHERE id = #{id}"
    run(sql)
  end

  def athletes()
    sql = "SELECT athletes.* FROM athletes WHERE athletes.nation_id = #{id}"
    return Athlete.map_items(sql)
  end

  def delete_all_athletes()
    sql = "DELETE FROM athletes WHERE athletes.nation_id = #{id}"
    run(sql)
  end

  def events()
    all_athletes = athletes()
    events = all_athletes.map {|athlete| athlete.events()}.flatten
    result = events.uniq {|event| event.id()}
    return result
  end

  def total_gold_medals()
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes_events.athlete_finishing_position = 1"
    return medal_count(sql)
  end

  def total_silver_medals()
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes_events.athlete_finishing_position = 2"
    return medal_count(sql)
  end

  def total_bronze_medals()
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes_events.athlete_finishing_position = 3"
    return medal_count(sql)
  end

  def total_points()
    total_points = (total_gold_medals() * 5) + (total_silver_medals() * 3) + (total_bronze_medals() * 1)
    return total_points
  end

  def self.all()
    sql = "SELECT * FROM nations"
    return Nation.map_items(sql)
  end

  def self.map_items(sql)
    nations = run(sql)
    result = nations.map {|nation| Nation.new(nation)}
    return result
  end

  def self.map_item(sql)
    result = Nation.map_items(sql)
    return result.first
  end

end