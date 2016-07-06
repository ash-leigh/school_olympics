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
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes.nation_id = #{id} AND athletes_events.athlete_finishing_position = 1"
    return medal_count(sql)
  end

  def total_silver_medals()
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes.nation_id = #{id} AND athletes_events.athlete_finishing_position = 2"
    return medal_count(sql)
  end

  def total_bronze_medals()
    sql = "SELECT COUNT(nations.*) FROM nations INNER JOIN athletes ON nations.id = athletes.nation_id INNER JOIN athletes_events ON athletes.id = athletes_events.athlete_id WHERE athletes.nation_id = #{id} AND athletes_events.athlete_finishing_position = 3"
    return medal_count(sql)
  end

  def total_points()
    total_points = (total_gold_medals() * 5) + (total_silver_medals() * 3) + (total_bronze_medals() * 1)
    return total_points
  end

  def profile()
    profile = [{"name" => @name, "athletes" => athletes(), "events" => events(), "gold_medals" => total_gold_medals, "silver_medals" => total_silver_medals, "bronze_medals" => total_bronze_medals}, total_points()]
    return profile
  end

  def self.all_profiles_ordered()
    nations = Nation.all()
    result = nations.map {|nation| nation.profile()}
    result_table = result.sort {|nation| nation[1]}
    return result_table.reverse
  end

  def self.update(options)
    run("UPDATE nations SET name='#{options['name']}' WHERE id=#{options['id']}")
  end

  def self.find(id)
    sql = "SELECT * FROM nations WHERE id=#{id}"
    nation = run(sql).first
    result = Nation.new(nation)
    return result
  end

  def self.all(query = "")
    query = query.to_s
    sql = "SELECT * FROM nations"
    sql = sql + " WHERE name LIKE '%#{query}%'" unless query.empty?
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