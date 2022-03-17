require "bridgetown-core/rack/logger"

port ENV.fetch("BRIDGETOWN_PORT") { 4000 }

if ENV["BRIDGETOWN_ENV"] == "production"
  workers ENV.fetch("BRIDGETOWN_CONCURRENCY") { 4 }
end

max_threads_count = ENV.fetch("BRIDGETOWN_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("BRIDGETOWN_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

preload_app!

log_formatter { Bridgetown::Rack::Logger.message_with_prefix _1 }
