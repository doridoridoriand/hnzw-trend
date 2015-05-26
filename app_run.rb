$: << File.expand_path(File.join(__FILE__, '..'))
require 'data_processor'
class AppRun < Sinatra::Base
  register Sinatra::Twitter::Bootstrap::Assets
  configure :development do
    register Sinatra::Reloader
  end

  get '/css/application.css' do
    sass :application
  end

  get '/' do
    @title = "HNZW TREND"
    slim :index, :layout => :layout_1col
  end

  get '/google' do
    @title = "Google Trend"
    @list = GoogleTrendParser::DATA
    slim :google
  end

end
