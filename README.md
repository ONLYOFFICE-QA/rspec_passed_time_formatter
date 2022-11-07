# RspecPassedTimeFormatter

This is formatter for `rspec` to show end time of each `it`

`rspec` result with html output without that gem looks like that:

![Screenshot_20221107_093203](https://user-images.githubusercontent.com/668524/200251650-c5e5f118-1e66-4c87-8538-e38bcb0d16ec.png)

`rspec` result with this gem usage looks like that:

![Screenshot_20221107_093311](https://user-images.githubusercontent.com/668524/200251659-cc94ecf9-954e-4a32-a087-4ff230a27204.png)

For very long tests or looking for test history - this formatter allow to better
understand when precisely test started and finished

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_passed_time_formatter'
```

And then execute:

```shell script
bundle
```

Or install it yourself as:

```shell script
gem install rspec_passed_time_formatter
```

## Usage

`rspec --format HtmlWithPassedTime --out out.html`
