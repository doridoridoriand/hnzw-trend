$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module FashioPressParser

  agent = Mechanize.new
  source = agent.get('http://www.fashion-press.net/news/search/fashion')

  data = {}

  source_arr = source.search("div.news-box").to_a

  source_arr.each do |entry|
    data[entry.search("h3").text] = entry.search('a').attribute('href').value
  end

  DATA = data
end
