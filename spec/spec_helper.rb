require 'bundler/setup'
require 'rspec_passed_time_formatter'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def run_spec_with_formatter(spec)
  `rspec #{spec} \
  --require #{Dir.pwd}/lib/rspec_passed_time_formatter.rb \
  --format HtmlWithPassedTime -o out.html`
end
