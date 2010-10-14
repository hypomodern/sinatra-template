require 'sample_app'

SampleApp.set :environment, ENV["RACK_ENV"] || :development

if ENV["RACK_ENV"] == "production"
  FileUtils.mkdir_p 'log' unless ::File.exists?('log')
  log = ::File.new("log/sinatra.log", "a+")
  $stdout.reopen(log)
  $stderr.reopen(log)
end

run SampleApp.new
