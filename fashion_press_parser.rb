$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module FashionPressParser

  agent = Mechanize.new
  source = agent.get(Base::FASHION_PRESS)

  data = {}

  source_arr = source.search("div.news-box").to_a

  source_arr.each do |entry|
    data[entry.search("h3").text] = "#{Base::FASHION_PRESS_TOP}#{entry.search('a').attribute('href').value}"
  end

  DATA = data
end
