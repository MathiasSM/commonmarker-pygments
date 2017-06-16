# Commonmarker::Pygments

A [CommonMarker](https://rubygems.org/gems/commonmarker) wrapper with
syntax highlight support by [Pygments](https://rubygems.org/gems/pygments.rb). Based on
[commonmarker-rouge](https://github.com/sandfoxme/commonmarker-rouge).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'commonmarker-pygments'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install commonmarker-pygments

## Usage


```ruby
# use default CommonMarker class and Pygments::Formatters::HTML formatter
CommonMarker::Pygments.render_html(content)

# get CommonMarker parsed AST
CommonMarker::Pygments.render_doc(content)

# pass options to CommonMarker
CommonMarker::Pygments.render_html(content, [:SAFE, :SOURCEPOS])

# pass some options to Rouge
CommonMarker::Rouge.render_html(content, :DEFAULT, :options => { css_class: 'custom-class' })
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Mathias San Miguel/commonmarker-pygments.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

