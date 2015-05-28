$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

module WearParser
  headless = Headless.new
  headless.start
  driver = Selenium::WebDriver.for :chrome

  Base::WEAR_URL_END_ARR.each do |url_end|
    driver.navigate.to "http://wear.jp/sp/keyword/#{url_end.to_s}/"
    data = driver.find_element(:id, "keyword_list").find_elements(:xpath, "./ul/li")
    hash = Hash.new {|h, e| h[e] = {}}
    data.each_with_index do |entry, i|
      puts entry.text
      hash[i][:type] = url_end.to_s
      hash[i][:text] = entry.text
    end
  end

  driver.quit
  headless.destroy

  DATA = hash
end
