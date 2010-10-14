require 'spec/rake/spectask'

task :default => :test
task :test => :spec

if !defined?(Spec)
  puts "spec targets require RSpec"
else
  desc "Run all examples"
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*.rb']
    t.spec_opts = ['-cfs']
  end
end

namespace :gems do
  desc 'Install required gems'
  task :install do
    system "sudo gem install bundler"
    system "bundle install"
  end
end

task :environment do
  require 'environment'
end
