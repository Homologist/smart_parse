class Formatter
  def self.pretty(results)
    results.map do |list|
      list.first.to_s + " " +  list[1].to_s + " " + "visits"
    end
  end

  def self.pretty_unique(results)
    results.map do |list|
      list.first.to_s + " " +  list[1].to_s + " " + "unique" + " " + "views"
    end
  end
end
