# frozen_string_literal: true

if ENV['CI'] == 'true'
  require 'simplecov'
  SimpleCov.start
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'bundler/setup'
require 'html_with_passed_time'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

# Run command with formatter
# @return [String] result of command
def run_spec_with_formatter(spec)
  `rspec #{spec} \
  --require #{Dir.pwd}/lib/html_with_passed_time.rb \
  --format HtmlWithPassedTime -o out.html`
end
