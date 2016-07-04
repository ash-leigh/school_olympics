class Medal

  attr_reader :type

  def initialize(type)
    @type = type
  end

  # def medal_count(sql)
  #   count = run(sql).to_a
  #   result = count.map{|number| number["count"]}
  #   return result[0].to_i
  # end

  def self.map_items(sql)
    medals = run(sql).to_a
    result = medals.map {|medal| medal.values}
    array = result[0]
    # result = medals.map {|medal| Medal.new(medal)}
    # return result
  end

end