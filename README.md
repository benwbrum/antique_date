# AntiqueDate

TODO: Write a gem description





## Installation

Add this line to your application's Gemfile:

    gem 'antique_date'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install antique_date

## Usage


## Parsing dates

AntiqueDate introduces the concept of a calendar locale -- a country 
or region whose calendar governs dates on a document.  The calendar
locale may be set globally or for each date that is parsed.

This example demonstrates the differemce between England (and 
possessions), which observed New Year's Day of March 25 until 1752, 
and Scotland, which had switched to New Year's Day of January 1
in 1600.

```ruby
require 'antique_date'

AntiqueDate.locale = AntiqueDate::CalendarLocale::ENGLAND

AntiqueDate.parse('February 11, 1731')
  #=> 11 Feb 1731/2

feb_11 = AntiqueDate.parse('February 11, 1731')
  #=> 11 Feb 1731/2
apr_11 = AntiqueDate.parse('April 11, 1731')
  #=> 11 Apr 1731

[feb_11, apr_11].sort
  #=> [Apr 11, 1731, Feb 11, 1731/2]

  #=> Feb 11, 1731

scotland_feb_11 = AntiqueDate.parse('February 11, 1731', AntiqueDate::CalendarLocale::SCOTLAND)
  #=> Feb 11, 1731
scotland_apr_11 = AntiqueDate.parse('April 11, 1731', AntiqueDate::CalendarLocale::SCOTLAND)
  #=> 11 Apr 1731

[scotland_feb_11, scotland_apr_11].sort
  #=> [Feb 11, 1731, Apr 11, 1731]

# should we support equals?  should we support comparison?
```

## Persisting dates

## Searching dates

## Proleptization

## Contributing

TODO: Info on adding new calendar regimes

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
