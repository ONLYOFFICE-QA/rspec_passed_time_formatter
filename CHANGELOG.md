# Change log

## master (unreleased)

### New Features

* Add `ruby-3.0` in CI
* Add `ruby-3.1` in CI
* Add `ruby-3.2` in CI
* Add `ruby-3.3` in CI
* Add `yamllint` check in CI
* Add `dependabot` check for `GitHub Actions`

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI
* Fix `codecov` report, by adding `codecov` github action
* Fix non-latest version of ruby for CI coverage report
* Run `rubocop` in CI through `bundle exec`

### Changes

* Freeze gem dependencies in `Gemfile.lock`
* Require newer version of `yard` with security fix
* Require `mfa` for releasing gem
* Remove `ruby-2.5` from CI since it's EOLed
* Remove `codeclimate` support since we don't use it any more
* Check `dependabot` at 8:00 Moscow time daily
* Changes from `rubocop-rspec` update to 2.9.0
* Fix `rubocop-1.28.1` code issues
* Drop `ruby-2.6`, `ruby-2.7` support, since it's EOL'ed
* Migrate to `codecov-4` CI action

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
