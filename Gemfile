source 'https://rubygems.org'

ruby File.read(".ruby-version").strip

# Return early if this file is parsed by the Bundler plugin DSL.
# This won't let us access dependencies in common-gems.
return if is_a?(Bundler::Plugin::DSL)

gem "bridgetown", "~> 1.0"

# Uncomment to add file-based dynamic routing to your project:
# gem "bridgetown-routes", "~> 1.0.0", group: :bridgetown_plugins

group :development do
  gem "puma", "~> 5.6"
end
