require 'open-uri'
require 'json'
require 'selenium-webdriver'
require 'headless'
require 'mechanize'
require 'cache_local'

module Base
  #URL
  FASHION_PRESS = 'http://www.fashion-press.net/news/search/fashion'
  FASHION_PRESS_TOP = 'http://www.fashion-press.net'
  GOOGLE_TREND = 'http://www.google.co.jp/trends/hottrends'
  WEAR_URL_END_ARR = ['women', 'men', 'kids']

  #Xpathes
  GOOGLE_TREND_KEYWORD = "//div[@class='hottrends-trends-list-date-container']/div"
end
