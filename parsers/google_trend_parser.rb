$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

#module GoogleTrendParser
  headless = Headless.new
  headless.start
  driver = Selenium::WebDriver.for :chrome

  driver.navigate.to 'https://www.google.co.jp/trends/explore#cat=0-18-68-993&geo=JP&cmpt=q&tz='

  begin
    #data = driver.find_elements(:xpath, "//td[@class='trends-bar-chart-name-cell trends-bar-chart-row']").to_a
    data = driver.find_elements(:xpath, "//tr[@class='trends-table-innertitle-firstrow']")
  rescue => error
    retry
  end

  p data

  driver.quit
  headless.destroy
#end
