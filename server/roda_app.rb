# Uncomment to use file-based dynamic routing in your project (make sure you
# uncomment the gem dependency in your Gemfile as well):
# require "bridgetown-routes"

class RodaApp < Bridgetown::Rack::Roda
  # Uncomment to use Bridgetown SSR:
  # plugin :bridgetown_ssr

  # And optionally file-based routing:
  # plugin :bridgetown_routes

  route do |r|
    # Load Roda routes in server/routes (and src/_routes via `bridgetown-routes`)
    Bridgetown::Rack::Routes.start! self
  end
end
