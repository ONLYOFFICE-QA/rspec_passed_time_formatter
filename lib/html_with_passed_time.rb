require 'rspec/core'
require_relative 'rspec_passed_time_formatter/version'

# This is formatter for `rspec` to show end time of each `it`
class HtmlWithPassedTime < RSpec::Core::Formatters::HtmlFormatter
  RSpec::Core::Formatters.register self, :example_passed

  def example_passed(passed)
    @printer.move_progress(percent_done)
    @printer.print_example_passed("#{passed.example.description} : \
                                  Test finished at: #{Time.now}",
                                  passed.example.execution_result.run_time.to_s)
    @printer.flush
  end
end
