# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spectre_scss/version'

Gem::Specification.new do |spec|
  spec.name          = 'spectre_scss'
  spec.version       = SpectreScss::VERSION
  spec.authors       = ['Zoran']

  spec.summary       = 'Sass port of the Spectre CSS framework'
  spec.description   = 'Spectre is a lightweight, responsive and modern CSS framework'
  spec.homepage      = 'https://github.com/zokioki/spectre_scss'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
