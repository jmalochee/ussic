configure do
  require 'sinatra/activerecord'
  require 'pry'

  Dir[__dir__ + "/../**/*.rb"].each do |file|
    require_relative file
  end
end
