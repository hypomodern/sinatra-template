where_we_at = File.expand_path(File.join(File.dirname(__FILE__), ".."))
$LOAD_PATH.unshift( where_we_at ) unless $LOAD_PATH.include?( where_we_at )

require 'rubygems'
require 'sinatra'
require 'rspec'
require 'rack/test'

# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false

require 'sample_app'
