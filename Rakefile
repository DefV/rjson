require 'rake'
require 'jeweler'

Jeweler::Tasks.new do |gem|
  gem.name = "rjson"
  gem.homepage = "http://github.com/DefV/rjson"
  gem.license = "MIT"
  gem.summary = %Q{Template Handler for JSON}
  gem.description = %Q{Template Handler for JSON}
  gem.email = "jan@sumocoders.be"
  gem.authors = ["Jan De Poorter"]
  gem.add_runtime_dependency 'actionpack', '~> 3.0.0'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end