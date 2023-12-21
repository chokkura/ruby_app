# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'bootsnap', require: false
gem 'devise'
gem 'jbuilder'
gem 'puma', '>= 6.0'
gem 'rails', '>= 7.1.0'
gem 'ruby-openai'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'elasticsearch'
gem 'elasticsearch-model'
gem 'elasticsearch-rails'
gem 'shakapacker', '>= 7.1'

# Javascript 関連
gem 'jsbundling-rails'
gem 'sprockets-rails'
gem 'react-rails'
gem 'bulma-rails'
gem 'mini_racer', platforms: :ruby
gem 'webpack'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rubocop', require: false
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

