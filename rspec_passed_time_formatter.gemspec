# frozen_string_literal: true

require_relative 'lib/rspec_passed_time_formatter/version'

Gem::Specification.new do |s|
  s.name = RspecPassedTimeFormatter::NAME
  s.version = RspecPassedTimeFormatter::VERSION
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.5'
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov']
  s.email = ['shockwavenn@gmail.com']
  s.summary = 'Formatter for `rspec` with end time'
  s.description = 'Formatter for `rspec` with output html with end times'
  s.homepage = "https://github.com/ONLYOFFICE-QA/#{s.name}"
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage
  }
  s.files = Dir['lib/**/*']
  s.license = 'AGPL-3.0'
  s.add_development_dependency('codecov', '0.2.11')
  s.add_development_dependency('overcommit', '0.55.0')
  s.add_development_dependency('rake', '13.0.1')
  s.add_development_dependency('rspec', '3.9.0')
  s.add_development_dependency('rubocop', '0.91.0')
  s.add_development_dependency('rubocop-performance', '1.8.0')
  s.add_development_dependency('rubocop-rake', '0.5.1')
  s.add_development_dependency('rubocop-rspec', '1.43.2')
  s.add_development_dependency('yard', '0.9.25')
end
