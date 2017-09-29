lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec_passed_time_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec_passed_time_formatter'
  spec.version       = RspecPassedTimeFormatter::VERSION
  spec.authors       = ['ONLYOFFICE', 'Pavel Lobashov']
  spec.email         = ['shockwavenn@gmail.com']

  spec.summary       = 'Formatter for `rspec` with end time'
  spec.description   = 'Formatter for `rspec` with output html with end times'
  spec.homepage      = 'https://github.com/onlyoffice-testing-robot/rspec_passed_time_formatter'
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
