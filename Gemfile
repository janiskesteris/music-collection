source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'haml-rails'
gem 'devise'
gem 'cancan'
gem 'simple_form'
gem 'carrierwave'
gem 'mini_magick'
gem 'meta_search'
gem 'twitter-bootstrap-rails'

gem 'jquery-rails'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem "debugger"
  gem "quiet_assets"
end

group :development, :test do
  gem 'sqlite3'
  gem 'steak'
  gem 'simplecov', :require => false
  gem 'fabrication'
  gem 'faker'
  gem "email_spec"
  gem "database_cleaner"
end

group :production do
  gem 'activerecord-postgresql-adapter'
  gem 'fog'
end