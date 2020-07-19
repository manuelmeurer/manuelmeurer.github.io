source 'https://rubygems.org'

ruby '2.7.1'

# Return early if this file is parsed by the Bundler plugin DSL.
# This won't let us access dependencies in common-gems.
return if self.is_a?(Bundler::Plugin::DSL)

gem 'middleman', '~> 4.3'

# Load common gems
eval_gemfile 'common-gems/middleman/Gemfile'
