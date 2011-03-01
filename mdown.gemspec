# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mdown/version"

Gem::Specification.new do |s|
  s.name        = "mdown"
  s.version     = Mdown::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aziz Light"]
  s.email       = ["aziiz.light@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Markdown preview}
  s.description = %q{Preview markdown files in your default browser}

  s.add_dependency "bcat", "0.6.0"
  s.add_dependency "maruku", "0.6.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
