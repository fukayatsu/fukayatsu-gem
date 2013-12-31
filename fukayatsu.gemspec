# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fukayatsu/version'

Gem::Specification.new do |spec|
  spec.name          = "fukayatsu"
  spec.version       = Fukayatsu::VERSION
  spec.authors       = ["fukayatsu"]
  spec.email         = ["fukayatsu@gmail.com"]
  spec.summary       = %q{It's me, fukayatsu; a joke gem}
  spec.description   = %q{It's me, fukayatsu; a joke gem}
  spec.homepage      = "https://github.com/fukayatsu/fukayatsu-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 3.0.0beta1"
  spec.add_development_dependency "coveralls"
end
