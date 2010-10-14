# Configure Mongo
MongoMapper.connection = Mongo::Connection.new(ENV["MONGO_HOST"] || "localhost")
MongoMapper.database = "sample_app_#{Sinatra::Base.environment}"

# load models
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

