$: << File.expand_path(File.join(__FILE__, '..'))
require 'base'
require 'forgery'

module DebugPageParser

  hash = Hash.new {|h, e| h[e] = {}}

  for i in 0..10 do
    hash[i][:title] = Forgery('internet').email_address
    hash[i][:URL] = Forgery('lorem_ipsum').sentence
  end

  DATA = hash
end
