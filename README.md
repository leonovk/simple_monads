# Simple Monads

[![Build Status](https://github.com/leonovk/simple_monads/actions/workflows/ruby.yml/badge.svg)](https://github.com/leonovk/simple_monads/actions/workflows/ruby.yml) ![Gem](https://img.shields.io/gem/dt/simple_monads) [![Gem Version](https://badge.fury.io/rb/simple_monads.svg)](https://badge.fury.io/rb/simple_monads)

## If you just need simple monads and nothing more

### Installation

```ruby
gem 'simple_monads'
```

And then execute:

```bundle install```

Or install it yourself as:

```gem install simple_monads```

Require if necessary:

```ruby
require 'simple_monads'
```

### Usage

Simple example of use:

```ruby
class SomeClass
  include SimpleMonads

  def return_failure
    Failure({ error: 'text' })
  end

  def return_success
    Success(5)
  end
end
```

Then using this object you can check and use monads:

```ruby
object = SomeClass.new
result = object.return_failure
result.failure? # true
result.failure # { error: 'text' }
```

The successful scenario is exactly the same.

## Contribution

If you would like to contribute to the development, submit a pull request with your changes. We welcome any contributions that improve the service. You can also view the current project board here.  You can also contribute by reporting bugs or suggesting new features. Please use the GitHub issues for that.