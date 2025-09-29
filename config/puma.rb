# config/puma.rb

# Puma can serve each request in a thread from an internal thread pool.
# Default: min 5, max 5 threads per worker.
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

# Port to bind to
port ENV.fetch("PORT") { 3000 }

# Set the environment
environment ENV.fetch("RAILS_ENV") { "development" }

# For Heroku: use single worker in development, multiple in production
workers ENV.fetch("WEB_CONCURRENCY") { 0 }

# Preload app for faster worker boot times
preload_app!

# Allow puma to be restarted by `bin/rails restart`
plugin :tmp_restart
