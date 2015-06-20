require 'rollbar/rails'
Rollbar.configure do |config|
  # Without configuration, Rollbar is enabled in all environments.
  # To disable in specific environments, set config.enabled=false.
  
  config.access_token = ENV['ROLLBAR_ACCESS_TOKEN']

  # Here we'll disable in 'test':
  if Rails.env.test?
    config.enabled = false
  end
  
  # Enable asynchronous reporting (using sucker_punch)
  config.use_sucker_punch

  # Enable delayed reporting (using Sidekiq)
  #config.use_sidekiq
  # You can supply custom Sidekiq options:
  #config.use_sidekiq 'queue' => 'my_queue'
end
