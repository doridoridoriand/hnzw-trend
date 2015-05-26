$: << File.expand_path(File.join(__FILE__, '..', 'parsers'))
require 'base'
require 'google_trend_parser'
require 'fashion_press_parser'

#module DataProcessor
#  {
#    title: Forgery(:name).full_name,
#    text: Forgery(:internet).email_addres
#  }
#end

GoogleTrendParser::DATA.each do |entry|
  entry.map {|entry| puts entry}
  puts '------'
end

FashionPressParser::DATA.each do |entry|
  entry.map {|entry| puts entry}
  puts '------'
end
