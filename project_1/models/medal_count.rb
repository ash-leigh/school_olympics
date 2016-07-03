def medal_count(sql)
  count = run(sql).to_a
  result = count.map{|number| number["count"]}
  return result[0].to_i
end