# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rjson"
  s.version = "0.1.6"

  s.authors = ["Jan De Poorter"]
  s.email = ["jan@defv.be"]
  s.date = "2012-01-25"
  s.summary = "Template Handler for JSON"
  s.description = "Template Handler for JSON"
  s.homepage = "http://github.com/DefV/rjson"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = `git ls-files -z`.split("\x0")
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_rubygems_version = ">= 2.0.0"

  s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])

  s.add_development_dependency(%q<capybara>, [">= 0"])
  s.add_development_dependency(%q<sqlite3>, [">= 0"])
end

