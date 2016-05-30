lita-onewheel-google
--------------------

[![Build Status](https://travis-ci.org/onewheelskyward/lita-onewheel-google.png?branch=master)](https://travis-ci.org/onewheelskyward/lita-onewheel-google)
[![Coverage Status](https://coveralls.io/repos/onewheelskyward/lita-onewheel-google/badge.png)](https://coveralls.io/r/onewheelskyward/lita-onewheel-google)

TODO: Add a description of the plugin.

Installation
------------
Add lita-onewheel-google to your Lita instance's Gemfile:

``` ruby
gem "lita-onewheel-google"
```

Configuration
-------------

Lita.configure do |config|
  config.handlers.onewheel_images.custom_search_engine_id = '123:xyz'
  config.handlers.onewheel_images.google_api_key = 'A1b2'
  config.handlers.onewheel_images.safe_search = 'medium'  # This is the default setting.  Use 'off' at your own risk.
end

Usage
-----

Well, firstly, Google's API explorer can be a little tricky.


Going Forward
-------------

I'm going to implement postgres and make sure I can track everything I want to track.  Testing the limits of the api calls since I get so few.
