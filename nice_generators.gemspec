# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'nice_generators/version'

Gem::Specification.new do |s|
  s.name        = 'nice_generators'
  s.version     = NiceGenerators::VERSION
  s.authors     = ['Patricio Mac Adden']
  s.email       = ['patriciomacadden@gmail.com']
  s.homepage    = 'https://github.com/patriciomacadden/nice_generators'
  s.summary     = %q{Nice generators for rails 3.}
  s.description = %q{Nice generators for rails 3.}

  s.rubyforge_project = 'nice_generators'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
