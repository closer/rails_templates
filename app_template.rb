# Bundler
gem 'bundler', '~> 1.5.2'

# dotenv
gem 'dotenv'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails-i18n', '~> 4.0.0'

# Use redis as cache or queue store
gem 'redis-rails'

# User Rack::Cache for HTTP caching
gem 'rack-cache'

# Use SCSS for stylesheets
gem 'sass-rails'

# A lightweight semantic grid framework for Sass and Bourbon
gem 'bourbon'
gem 'bitters'
gem 'neat'

# Use TheGrid for csv
gem 'the_grid'

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Use Slim for html
gem 'slim-rails'

if yes?('Devise ?')
  # Devise for Auth
  gem 'devise'
  gem 'devise-i18n'

  # Permission
  gem 'authority'
  gem 'rolify'
end

if yes?('FriendlyId ?')
  # FriendlyIg
  gem 'friendly_id', '~> 5.0.0'
end

if yeas?('Markdown ?')
  # Markdown
  gem 'redcarpet'
end

if yeas?('Paperclip ?')
  # Image Upload
  gem 'paperclip'
end

# FactoryGirl
gem 'factory_girl', require: false

gem_group :development do

  # Quiet Assets Log
  gem 'quiet_assets', '~> 1.0.2'

  # Guard
  gem 'ruby_gntp'
  gem 'guard'
  gem 'guard-rails'
  gem 'guard-unicorn', github: 'closer/guard-unicorn'
  gem 'guard-livereload'
  gem 'guard-minitest'
  gem 'guard-redis'
end

gem_group :development, :test do

  # Console Debugger
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'tapp'
  gem 'awesome_print'

  # Browser Debugger
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate', github: 'ctran/annotate_models'
  gem 'timecop'
  gem 'colorize_unpermitted_parameters'
  gem 'rack-mini-profiler'
  gem 'xray-rails'

  # Test Framework
  gem 'minitest-rails'
  gem 'minitest-colorize'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'webmock'
  gem 'database_cleaner'

  # Syntax
  gem 'rubocop'

  # Coverage
  gem 'simplecov', require: false
end

# Use unicorn as the app server
gem 'unicorn'
gem 'unicorn-rails'

# Use Capistrano for deployment
gem_group :development do
  gem 'capistrano', '~> 3.0.0', require: false
  gem 'capistrano-rails', '~> 1.1.0', require: false
  gem 'capistrano-rbenv', '~> 2.0', require: false
  gem 'capistrano-bundler', require: false
end
