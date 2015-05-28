$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'

headless = Headless.new
headless.start
driver = Selenium::WebDriver.for :chrome

driver.navigate.to 'http://doridorian.com/data.html'

data = driver.find_element(:xpath, "//div[@class='embed']")
puts data

driver.quit
headless.destroy
