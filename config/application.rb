require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Benchmarkit
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework false
    end
    config.assets.log = false
  end
end

SECRETS = Rails.application.secrets
