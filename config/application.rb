require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MlibSufiaApp
  class Application < Rails::Application

    config.web_console.whitelisted_ips = %w( 127.0.0.1 155.97.12.196 174.23.46.41 67.186.242.129 ) if Rails.env.development?
    
    config.generators do |g|
      g.test_framework :rspec, :spec => true
    end


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
