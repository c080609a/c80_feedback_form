[![Gem Version](https://badge.fury.io/rb/c80_feedback_form.svg)](http://badge.fury.io/rb/jquery_lazy_load)
[![Build Status](https://travis-ci.org/c080609a/c80_feedback_form.svg?branch=master)](https://travis-ci.org/c080609a/c80_feedback_form)

# C80FeedbackForm

Gem adds functionality to allow users to send feedback messages from site.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'c80_feedback_form'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install c80_feedback_form

## Usage

NOTE: This gem uses `activeadmin` gem, `jQuery` gem, `bootstrap-sass` gem and `c80_modal_forms` gem.

Ensure, that your application's `Gemfile` contains these lines:
```ruby
gem 'activeadmin'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'c80_modal_forms'
```

You will need to add this line into your `application.js`:

    //= require c80_modals_form
    //= require c80_feedback_form

And add this line into `application.scss`:

    @import "c80_feedback_form";

Add this line into `active_admin.scss`:

    @import "active_admin_c80_feedback_form";

Add this line into `routes.rb`:

    mount C80FeedbackForm::Engine => '/'

Gem functionality applies to code snippets like this:

    <body id="contacts"> <!-- js script performs at body#contacts page only -->
       <...>
       <div id="ff"></div> <!-- feedback form placeholder -->
       <...>
    </body>

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/c80_feedback_form/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
