require File.expand_path('../boot', __FILE__)

require 'rails/all'

require_relative '../lib/env'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module GemReview
  class Application < Rails::Application
    config.autoload_paths += Dir["#{Rails.root}/api"]

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end

