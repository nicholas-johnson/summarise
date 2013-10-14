# Summarise

Summarise is a small gem which extends String, allowing you to create summaries of strings and html fragments while respecting word boundaries, something I need to do a lot.

## Usage

The length of the returned string is not guaranteed as it depends on the location of spaces. Simply call summarise on your string to get a version shortened to around 200 characters, or pass in a value to limit to that length instead.

Pass a suffix and shortened strings will have it appended to the end of them.

    str = "Summarise is a small gem which extends String, allowing you to create summaries."

    str.summarise 25
    => "Summarise is a small gem which"

    str.summarise 25, :suffix => "..."
    => "Summarise is a small gem which..."

    str.summarise 5000, :suffix => "..."
    => "Summarise is a small gem which extends String, allowing you to create summaries."

You can also check if a string is summarisable like so:

    # Default is 200 chars
    str.summarisable?
    => false

    str.summarisable? 5000
    => false

    str.summarisable 30
    => true

## Installation

Add this line to your application's Gemfile:

    gem 'summarise'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install summarise

## Requires

The gem uses Nokogiri to handle html fragments.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
