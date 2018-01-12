require 'sidekiq'
require 'sidekiq-scheduler/web'

Sidekiq.configure_client do |config|
    config.redis = { 
      host: ENV['REDIS_HOST'],
      port: ENV['REDIS_PORT'] || 6379, 
      db: ENV['REDIS_DB'] || 0 
    }
end

require 'sidekiq/web'

run Sidekiq::Web
