$: << File.expand_path(File.join(__FILE__, '..', 'parsers'))
require 'base'
require 'fashion_press_parser'

#puts $: << File.expand_path(File.join(__FILE__, '..', 'parsers'))

FashionPressParser::DATA.each do |entry|
  puts entry
end
