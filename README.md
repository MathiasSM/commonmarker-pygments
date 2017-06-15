# CommonMarker+Pygments

A [CommonMarker](https://rubygems.org/gems/commonmarker) wrapper with
syntax highlight support by [Pygments](https://rubygems.org/gems/pygments.rb). Based on
[commonmarker-rouge](https://github.com/sandfoxme/commonmarker-rouge).


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

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

