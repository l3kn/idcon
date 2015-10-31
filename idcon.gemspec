# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'idcon/version'

Gem::Specification.new do |spec|
  spec.name          = "idcon"
  spec.version       = Idcon::VERSION
  spec.authors       = ["l3kn"]
  spec.email         = ["hello@l3kn.de"]

  spec.summary       = "svg Identicon Generator"
  spec.homepage      = "https://github.com/l3kn/idcon"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rmagick", "~> 2.15.4"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
