require 'rubygems'
require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/bundles'
require 'mustache/sinatra'
require 'mongo_mapper'
require 'environment'

class SampleApp < Sinatra::Base
  register Mustache::Sinatra
  register Sinatra::Bundles
  
  require 'views/layout'
  
  set :mustache, {
    :templates => "templates/",
    :views => "views/",
    # If our Sinatra::Base subclass was instead Sample::App,
    # we'd want to do `set :namespace, Sample::App`
    # :namespace => SampleApp
  }
  set :public, 'public'
  
  stylesheet_bundle(:core, %w(screen controls main))
  javascript_bundle(:all)
  disable(:compress_bundles)
  
  error do
    e = request.env['sinatra.error']
    Kernel.puts e.backtrace.join("\n")
    'Application error'
  end
  
  before do
    @app_settings = settings
  end
  
  get '/' do
    mustache :index
  end
end

