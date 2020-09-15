# frozen_string_literal: true

require 'rspec/core'
require_relative 'rspec_passed_time_formatter/version'

# This is formatter for `rspec` to show end time of each `it`
class HtmlWithPassedTime < RSpec::Core::Formatters::HtmlFormatter
  RSpec::Core::Formatters.register self, :example_passed

  # Formatter for passed example
  def example_passed(passed)
    result_data = passed.example.execution_result
    @printer.move_progress(percent_done)
    @printer.print_example_passed("#{passed.example.description} : \
                                  Test started at: #{result_data.started_at} \,
                                  Test finished at: #{result_data.finished_at}",
                                  result_data.run_time.to_s)
    @printer.flush
  end
end
