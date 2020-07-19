activate :directory_indexes
activate :autoprefixer
activate :sprockets

activate :cdn do |cdn|
  cdn.filter      = /\.(html|txt|xml)\z/i
  cdn.cloudflare  = {
    client_api_key: ENV.fetch('CLOUDFLARE_API_KEY') '',
    email:          'manuel@krautcomputing.com',
    zone:           'manuelmeurer.com',
    base_urls:      %w(https://manuelmeurer.com')
  }
end

set :css_dir,    'stylesheets'
set :js_dir,     'javascripts'
set :images_dir, 'images'

configure :development do
  activate :livereload

  set :debug_assets, true
  set :host,         'http://localhost:4567'
end

configure :build do
  activate :gzip
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
  activate :imageoptim

  set :host, 'https://manuelmeurer.com'
end
