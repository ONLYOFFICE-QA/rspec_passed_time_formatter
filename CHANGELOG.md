# Change log

## master (unreleased)

### New Features

* Add support of `rubocop-rspec`, `rubocop-performance` and `rubocop-rake`
* Freeze specific versions of `rubocop` gems, so updates can be monitored

### Fixes

* `.idea` folder in .gitignore

### Changes

* Minor cleanups in `gemspec` file

## 0.1.0 (2018-03-12)
* Add test started time to result html ([rspec_passed_time_formatter#3](https://github.com/onlyoffice-testing-robot/rspec_passed_time_formatter/issues/3))
* End time show `it` end time, do not count stuff in `after do`
* Initial release of `onlyoffice_file_helper` gem
