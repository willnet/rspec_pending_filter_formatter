# RSpec Pending Filter Formatter

A custom RSpec formatter that suppresses detailed pending test output and shows only the count in the summary.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec_pending_filter_formatter'
```

And then execute:

```bash
bundle install
```

Or install it yourself as:

```bash
gem install rspec_pending_filter_formatter
```

## Usage

You can use this formatter by specifying it on the command line:

```bash
rspec --format RSpecPendingFilterFormatter::Formatter
```

Or configure it in your `.rspec` file:

```
--format RSpecPendingFilterFormatter::Formatter
```

Or in your `spec/spec_helper.rb`:

```ruby
RSpec.configure do |config|
  config.formatter = RSpecPendingFilterFormatter::Formatter
end
```

## What it does

This formatter extends the standard `ProgressFormatter` and modifies the behavior for pending tests:

- **During test execution**: Pending tests show the "*" character as usual
- **No detailed output**: File paths, line numbers, and reasons for pending tests are not displayed
- **Summary**: The count of pending tests is shown only in the final RSpec summary line

### Standard RSpec output (with pending details)

```
..*..F

Pending: (Failures listed here)
  1) User registration validates email format
     # Not yet implemented
     # ./spec/user_spec.rb:15

Failures:
  ...

Finished in 0.5 seconds
5 examples, 1 failure, 1 pending
```

### With this formatter

```
..*..F

Failures:
  ...

Finished in 0.5 seconds
5 examples, 1 failure, 1 pending
```

## Why use this?

This formatter is useful when:

- You have many pending tests that clutter the output
- You want to focus on failures and successes during test execution
- You only need to know the count of pending tests in the summary, not the detailed reasons

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/willnet/rspec-pending-filter-formatter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
