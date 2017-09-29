require 'spec_helper'

RSpec.describe RspecPassedTimeFormatter do
  it 'has a version number' do
    expect(RspecPassedTimeFormatter::VERSION).not_to be nil
  end

  it 'should return just seconds for sub 60 seconds' do
    run_spec_with_formatter("#{Dir.pwd}/spec/simple_spec.rb")
    expect(File.read('out.html')).to include('Test finished at')
  end
end
