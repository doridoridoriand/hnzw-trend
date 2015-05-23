$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module GoogleTrendParser
  headless = Headless.new
  headless.start
  driver = Selenium::WebDriver.for :chrome

  driver.navigate.to Base::GOOGLE_TREND

  begin
    data = driver.find_elements(:xpath, Base::GOOGLE_TREND_KEYWORD).to_a
  rescue => error
    sleep(5)
    retry
  end

  data_text = data.map {|entry| entry.find_elements(:xpath, "./div/div/div").map {|node| node.text}.to_a}

  driver.quit
  headless.destroy

  hash = Hash.new {|h, e| h[e] = {}}
  data_text.each_with_index do |entry, i|
    hash[i][:title] = entry[0]
    hash[i][:text] = entry[1]
  end
  DATA = hash
end
