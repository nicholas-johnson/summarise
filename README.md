# Summarise

Summarise is a small gem which extends String, allowing you to create summaries of strings while respecting word boundaries.

## Usage

    str = "Summarise is a small gem which extends String, allowing you to create summaries."

    str.summarise 25
    => "Summarise is a small gem which"

    str.summarise 25, :suffix => "..."
    => "Summarise is a small gem which..."

    str.summarise 5000, :suffix => "..."
    => "Summarise is a small gem which extends String, allowing you to create summaries."

## Installation

Add this line to your application's Gemfile:

    gem 'summarise'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install summarise


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
