# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'GareEnDirect/version'

Gem::Specification.new do |spec|
  spec.name          = 'GareEnDirect'
  spec.version       = GareEnDirect::VERSION
  spec.authors       = ['Florian L.']
  spec.email         = ['florian@e-lam.net']
  spec.description   = %q{GareEnDirect - Toutes les informations de vos gares en direct (Scrapper de gares-en-mouvement.com)}
  spec.summary       = %q{GareEnDirect - Toutes les informations de vos gares en direct (Scrapper de gares-en-mouvement.com)}
  spec.homepage      = 'https://github.com/Florian95/GareEnDirect'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.1', '>= 10.1.0'
  spec.add_development_dependency 'rspec', '~> 2.14', '>= 2.14.1'

  spec.add_runtime_dependency 'excon', '~> 0.26', '>= 0.26.0'
  spec.add_runtime_dependency 'nokogiri', '~> 1.6', '>= 1.6.1'
end
