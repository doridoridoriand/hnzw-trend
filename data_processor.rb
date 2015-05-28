$: << File.expand_path(File.join(__FILE__, '..', 'parsers'))
require 'base'
require 'google_trend_parser'
require 'fashion_press_parser'
require 'wear_parser'



#json_data = JSON.parse(GoogleTrendParser::DATA.encode('UTF-8'))
#puts json_data["children"]

#FashionPressParser::DATA.each do |entry|
#entry.map {|entry| puts entry}
#  puts '------'
#end
