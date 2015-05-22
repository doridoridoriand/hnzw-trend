$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'forgery'

module DebugPageParser
  hash = {}
  entry = {}

  for i in 0..10 do
    entry['title'] = Forgery('internet').email_address
    entry['URL']   = Forgery('lorem_ipsum').sentence
    hash[i.to_s]   = entry
  end

  p hash

end
