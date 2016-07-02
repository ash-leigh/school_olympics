require('pg')
require_relative('../db/sql_runner')
require_relative('event')
require_relative('medal')

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

  def save_medal(medals)
    sql = "UPDATE athletes SET medals = ARRAY['#{medals}'] WHERE id = #{id}"
    run(sql)
  end

  def recieve_gold_medal
    events = events()
    athlete = events.map{|event| event.first_place()}.flatten
    medals = athlete.map {|athlete| Medal.new('gold')}
    save_medal(medals)
  end

  def recieve_silver_medal
    events = events()
    athlete = events.map{|event| event.second_place()}.flatten
    medals = athlete.map {|athlete| Medal.new('silver')}
    save_medal(medals)
  end

  def recieve_bronze_medal
    events = events()
    athlete = events.map{|event| event.third_place()}.flatten
    medals = athlete.map {|athlete| Medal.new('bronze')}
    save_medal(medals)
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