source 'https://rubygems.org'

# rails
gem 'rails', '4.0.2'

# jquery
gem 'jquery-rails'

# assets(stylesheets, javascript)
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'

# documents
group :doc do
  gem 'sdoc', require: false
end

# bootstrap
gem "less-rails-bootstrap"
gem "twitter-bootstrap-rails"
gem "flat-ui-rails"

# facebook authentication 
gem 'omniauth-facebook'

# dev env
group :development do 
  gem 'debugger'
end

# test env
group :test do
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'rb-fsevent', '~> 0.9.1'
  gem "factory_girl_rails", "~> 4.0"
end

# dev & test env
group :development, :test do
  gem 'sqlite3'
  gem 'seedbank'
end

# production env
group :production do
  gem 'unicorn'
  gem 'mysql2'
end
