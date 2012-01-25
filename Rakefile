#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rjson"
  gem.homepage = "http://github.com/DefV/rjson"
  gem.license = "MIT"
  gem.summary = %Q{Template Handler for JSON}
  gem.description = %Q{Template Handler for JSON}
  gem.email = "jan@sumocoders.be"
  gem.authors = ["Jan De Poorter"]

  gem.add_runtime_dependency 'rails', ['> 3.0.0']

  gem.add_development_dependency "sqlite3"
  gem.add_development_dependency "capybara"
end
Jeweler::RubygemsDotOrgTasks.new

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => :test
