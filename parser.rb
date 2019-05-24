#!/usr/bin/env ruby
require "./lib/smart_parse"
puts "This is the list of webpage with the most views"
puts Formatter.pretty(SmartParse.most_views(ARGV[0]))
puts ""
puts "This is the list of webpage with the most unique views"
puts Formatter.pretty_unique(SmartParse.most_unique_views(ARGV[0]))
