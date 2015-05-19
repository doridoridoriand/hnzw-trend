require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'].to_sym)
require "sinatra/twitter-bootstrap"
begin
  use Rack::LiveReload, no_swf: true
rescue
  nil
end

require File.expand_path(File.join(__FILE__, '..', 'app_run'))
run AppRun
