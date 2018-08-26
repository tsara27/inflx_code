source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# RuboCop is a Ruby static code analyzer and code formatter.
gem 'rubocop', require: false
# Slim is a template language whose goal is to reduce the view syntax to the essential parts without becoming cryptic.
gem 'slim'
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise'

group :development, :test do
  # Pry is a powerful alternative to the standard IRB shell for Ruby.
  gem 'pry'
  # Factory Bot is a fixtures replacement with a straightforward definition syntax.
  gem 'factory_bot_rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Database Cleaner is a set of strategies for cleaning your database in Ruby.
  gem 'database_cleaner'
  # rspec-rails is a testing framework for Rails 3.x, 4.x and 5.x.
  gem 'rspec-rails', '~> 3.7'
  # Capybara helps you test web applications by simulating how a real user would interact with your app.
  gem 'capybara'
  # Selenium is an umbrella project encapsulating a variety of tools and libraries enabling web browser automation.
  gem 'selenium-webdriver'
  # Shoulda helps you write more understandable, maintainable Rails-specific tests using Minitest.
  gem 'shoulda'
  # SimpleCov is a code coverage analysis tool for Ruby.
  gem 'simplecov', require: false
end
