# GareEnDirect [![Build Status](https://secure.travis-ci.org/Florian95/GareEnDirect.png)](http://travis-ci.org/Florian95/GareEnDirect) [![Code Climate](https://codeclimate.com/github/Florian95/GareEnDirect.png)](https://codeclimate.com/github/Florian95/GareEnDirect) ![Gem Version](https://badge.fury.io/gh/Florian95%2FGareEnDirect.png)

GareEnDirect - Toutes les informations de vos gares en direct (Scrapper de gares-en-mouvement.com)

## Installation

Add this line to your application's Gemfile:

    gem 'GareEnDirect'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install GareEnDirect

## Usage

### Get all Stations

```ruby
    stations = GareEnDirect::Stations.new
```

### Get a specific station

```ruby
station = GareEnDirect::Stations.new 'Lyon Part Dieu'
station.station_info
```

### Get next departures from a specific station

```ruby
station = GareEnDirect::Stations.new 'Lyon Part Dieu'
station.next_departures
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
