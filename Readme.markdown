# AcmeChallenge

[![Gem Version](https://img.shields.io/gem/v/acme_challenge.svg)](http://rubygems.org/gems/acme_challenge)
[![Build Status](https://img.shields.io/travis/soffes/acme_challenge/master.svg)](https://travis-ci.org/soffes/acme_challenge)

Simple rack middeware for responding to ACME challenge like LetsEncrypt uses.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'acme_challenge'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acme_challenge


## Usage

Simply mount as middleware and specify the challenge response. Add something like this to your `config.ru`:

```ruby
use AcmeChallenge, 'UG0AjhvK-plt_4TjdxFMHgINYdqB_At1ukwMH1ItZXo.pI79XvTWAEyw1GO5BJYjxGs5KZrrSDSum9i5JZqeYsQ'
```

It may be handy to do something like this:

```ruby
use AcmeChallenge, ENV['ACME_CHALLENGE'] if ENV['ACME_CHALLENGE']
```

Using environment variables is nice since you don't have to redeploy to do a new challenge.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/acme_challenge.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
