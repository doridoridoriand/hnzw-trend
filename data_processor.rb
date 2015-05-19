$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'google_trend_parser'

GoogleTrendParser::DATA.each do |entry|
  puts entry
  puts '------'
end
