require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'mustache/sinatra'
require 'mongo_mapper'
require 'environment'

class SampleApp < Sinatra::Base
  register Mustache::Sinatra
  require 'views/layout'
  
  set :mustache, {
    :templates => "templates/",
    :views => "views/",
    # If our Sinatra::Base subclass was instead Sample::App,
    # we'd want to do `set :namespace, Sample::App`
    # :namespace => SampleApp
  }
  set :public, 'public'
  
  error do
    e = request.env['sinatra.error']
    Kernel.puts e.backtrace.join("\n")
    'Application error'
  end
  
  get '/' do
    mustache :index
  end
end

