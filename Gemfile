source "https://rubygems.org"

gem "rails",     ">= 4.0.0.rc1"
gem "arel",      github: "rails/arel"

gem "pg"

gem "sprockets-rails", github: "rails/sprockets-rails"
gem "sass-rails", github: "rails/sass-rails"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", github: "rails/coffee-rails"
gem "jquery-rails"

gem "grape", github: "intridea/grape"
gem "active_model_serializers"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem "sdoc", require: false
end

# Use ActiveModel has_secure_password
gem "bcrypt-ruby", "~> 3.0.0"

# Use unicorn as the app server
gem "unicorn"

group :development do
  gem "capistrano"
  gem "debugger"
end

group :test do
  gem "database_cleaner"
  gem "rspec-rails"
  gem "json_spec"
end
