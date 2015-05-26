$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module FashionPressParser

  agent = Mechanize.new
  source = agent.get(Base::FASHION_PRESS)

  hash = Hash.new {|h, e| h[e] = {}}

  source_arr = source.search("div.news-box").to_a
  source_arr.each_with_index do |entry, i|
    hash[i][:title] = entry.search("h3").text
    hash[i][:URL]   = "#{Base::FASHION_PRESS_TOP}#{entry.search('a').attribute('href').value}"
  end

  DATA = hash
end
