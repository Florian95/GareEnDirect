# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'GareEnDirect/version'

Gem::Specification.new do |spec|
  spec.name          = 'GareEnDirect'
  spec.version       = GareEnDirect::VERSION
  spec.authors       = ['Florian L.']
  spec.email         = ['florian@e-lam.net']
  spec.description   = %q{Crawl Gare Et Connection - Gare en Direct}
  spec.summary       = %q{Crawl Gare Et Connection - Gare en Direct}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'excon'
  spec.add_development_dependency 'nokogiri'
end
