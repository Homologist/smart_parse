require_relative "smart_parse/formatter"
require_relative "smart_parse/version"

module SmartParse

  def self.parse(path = nil)
    File.read(path)
    .scan(/^(\S*) ([0-9]{,3}.[0-9]{,3}.[0-9]{,3}.[0-9]{,3})$/)
  end

  def self.most_views(path)
    most_views_filter(parse(path))
  end

  def self.most_unique_views(path)
    most_views_filter(parse(path).uniq!)
  end

  private

  def self.most_views_filter(list)
    list.inject([{}]) do |acc, list|
      acc.first[list.first] = (acc.first[list.first] || 0 ) + 1
      acc
    end.first.map do |k, v|
      [k, v]
    end.sort_by { |list| list[1] }.reverse!
  end
end
