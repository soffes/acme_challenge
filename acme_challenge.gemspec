# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acme_challenge/version'

Gem::Specification.new do |spec|
  spec.name          = 'acme_challenge'
  spec.version       = AcmeChallenge::VERSION
  spec.authors       = ['Sam Soffes']
  spec.email         = ['sam@soff.es']

  spec.summary       = 'Simple rack middeware for responding to ACME challenge.'
  spec.description   = 'Simple rack middeware for responding to ACME challenge like LetsEncrypt uses.'
  spec.homepage      = 'https://github.com/soffes/acme_challenge'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1'
  spec.add_development_dependency 'rack-test', '~> 0.6'
end
