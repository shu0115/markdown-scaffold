# Markdown::Scaffold

Scaffold for Markdown.

## Installation

Add this line to your application's Gemfile:

    gem 'markdown-scaffold'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markdown-scaffold

## Usage

Generate

```
rails g markdown:scaffold
----------
      create  app/assets/stylesheets/pygments.css
      create  app/models/html_with_pygments.rb
      insert  app/controllers/application_controller.rb
      create  config/initializers/ruby_python.rb
----------
```

View

```ruby
<%= raw show_markdown( markdown_text ) %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
