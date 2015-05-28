$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'pp'

headless = Headless.new
headless.start
driver = Selenium::WebDriver.for :chrome

result_arr = []

Base::WEAR_URL_END_ARR.each do |url_end|
  driver.navigate.to "http://wear.jp/sp/keyword/#{url_end.to_s}/"
  puts "http://wear.jp/sp/keyword/#{Base::WEAR_URL_END_ARR[0]}/"
  puts driver.title
  data = driver.find_element(:id, "keyword_list").find_elements(:xpath, "./ul/li")
  data.map {|node| result_arr << node.text}
end

driver.quit
headless.destroy

hash = Hash.new {|h, e| h[e] = {}}
result_arr.each_with_index do |entry, i|
  hash[i][:text] = entry
end
DATA = hash
