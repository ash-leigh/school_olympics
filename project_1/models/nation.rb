require('pg')
require_relative('../db/sql_runner')
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

  def athletes()
    sql = "SELECT athletes.* FROM athletes WHERE athletes.nation_id = #{id}"
    return Athlete.map_items(sql)
  end

  def events()
    all_athletes = athletes()
    events = all_athletes.map {|athlete| athlete.events()}.flatten
    result = events.uniq {|event| event.id()}
    return result
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