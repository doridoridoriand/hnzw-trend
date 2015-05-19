$: << File.expand_path(File.join(__FILE__, '..', 'parsers'))
require 'base'
require 'google_trend_parser'
require 'fashion_press_parser'

GoogleTrendParser::DATA.each do |entry|
  puts entry
  puts '------'
end

FashionPressParser::DATA.each do |entry|
  puts entry
  puts '------'
end
