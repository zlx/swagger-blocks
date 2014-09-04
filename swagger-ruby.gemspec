# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative './lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'swagger-ruby'
  spec.version       = Swagger::Ruby::VERSION
  spec.authors       = ['Mike Fotinakis']
  spec.email         = ['mike@fotinakis.com']
  spec.summary       = %q{Define and generate Swagger JSON files in Ruby.}
  spec.description   = %q{Define and generate Swagger JSON files in Ruby.}
  spec.homepage      = 'https://github.com/fotinakis/swagger-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
end
