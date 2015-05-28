$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'pp'

headless = Headless.new
headless.start
driver = Selenium::WebDriver.for :chrome

Base::WEAR_URL_END_ARR.each do |url_end|
  #driver.navigate.to "http://wear.jp/sp/keyword/women/"
  driver.navigate.to "http://wear.jp/sp/keyword/#{url_end.to_s}/"
  puts driver.title
  puts "http://wear.jp/sp/keyword/#{Base::WEAR_URL_END_ARR[0]}/"
  data = driver.find_element(:id, "keyword_list").find_elements(:xpath, "./ul/li")
  data.map {|node| puts node.text}
end

driver.quit
headless.destroy
