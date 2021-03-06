# Change log

## master (unreleased)

### New Features

* Add `ruby-3.0` in CI

### Changes

* Freeze gem dependencies in `Gemfile.lock`
* Require newer version of `yard` with security fix

## 0.2.0 (2020-09-15)

### New Features

* Add support of `rubocop-rspec`, `rubocop-performance` and `rubocop-rake`
* Freeze specific versions of all dev gems, so updates can be monitored
* Use `GitHub Actions` instead of TravisCI
* Add `dependabot` configuration
* Add `markdownlint` task in CI
* Add `rubocop` check in CI
* Add `rake` task to release gem on rubygems
  and GitHub Packages
* Add `yard` task to check 100% documentation  

### Fixes

* `.idea` folder in .gitignore

### Changes

* Minor cleanups in `gemspec` file
* Move repo ownership to `ONLYOFFICE-QA`
* Drop support of ruby <= 2.4 since it's EOLed

## 0.1.0 (2018-03-12)

* Add test started time to result html ([rspec_passed_time_formatter#3](https://github.com/ONLYOFFICE-QA/rspec_passed_time_formatter/issues/3))
* End time show `it` end time, do not count stuff in `after do`
* Initial release of `onlyoffice_file_helper` gem
