# Markdown::Scaffold

Scaffold for Markdown.

## Installation

Add this line to your application's Gemfile:

```ruby
# For Markdown
gem 'markdown-scaffold', :group => :development
gem 'redcarpet'
gem "pygments.rb"          # => 0.2.3
gem "rubypython", "0.5.1"  # For Heroku
```

And then execute:

    bundle

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

```erb
<%= raw show_markdown( "markdown_text" ) %>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
