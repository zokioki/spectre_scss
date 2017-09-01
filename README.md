# Spectre.scss

[Spectre](https://picturepan2.github.io/spectre/) is a lightweight, responsive and modern CSS framework. This gem packages a Sass version of Spectre's assets for drop-in use in Rails applications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spectre_scss'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spectre_scss

## Usage

Once installed, add the following to your `application.scss`:

```scss
@import "spectre";
```

Or, import components as needed:

```scss
// Core variables and mixins
@import 'spectre/src/variables';
@import 'spectre/src/mixins';
@import 'spectre/src/utilities';

// Reset and dependencies
@import 'spectre/src/normalize';
@import 'spectre/src/base';

@import 'spectre/src/buttons';
@import 'spectre/src/navbar';
@import 'spectre/src/tables';
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
