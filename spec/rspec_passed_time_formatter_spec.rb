# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RspecPassedTimeFormatter do
  it 'has a version number' do
    expect(RspecPassedTimeFormatter::VERSION).not_to be_nil
  end

  it 'returns just seconds for sub 60 seconds' do
    run_spec_with_formatter("#{Dir.pwd}/spec/object_simple_spec.rb")
    expect(File.read('out.html')).to include('Test finished at')
  end

  it 'shows time when started' do
    run_spec_with_formatter("#{Dir.pwd}/spec/object_simple_spec.rb")
    expect(File.read('out.html')).to include('Test started at:')
  end
end
