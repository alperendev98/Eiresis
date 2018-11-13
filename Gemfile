source 'http://rubygems.org'

ruby File.read('.ruby-version2').strip

gem 'rails', '~> 4.2.0'

gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier'

gem 'sprockets', '2.12.4' # FIXME: https://github.com/rails/sprockets/issues/59

gem 'foundation-rails'

gem 'pg'

gem 'rails_admin'

gem 'premailer-rails'

gem 'uri-js-rails'

gem 'mustache'
gem 'mustache-js-rails'
gem 'slim-rails'

gem 'daemons'

gem 'rack-cors', :require => 'rack/cors'

gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'omniauth-twitter'
gem 'omniauth-meetup'
gem 'omniauth-linkedin'
gem 'omniauth-tecnologiedemocratiche', git: 'https://github.com/TecnologieDemocratiche/omniauth-tecnologiedemocratiche'

gem 'paperclip'

gem 'aws-sdk', '< 2.0'

gem 'jquery-rails'

gem 'turbolinks'

gem 'jbuilder'

gem 'devise'

gem 'devise_traceable', git: 'https://github.com/coorasse/devise_traceable'
gem 'simple_token_authentication'

gem 'koala'

gem 'sinatra', require: false

gem 'sidekiq'
gem 'sidekiq-failures'

gem 'cancancan'

gem 'sitemap_generator'

gem 'geocoder'

gem 'vote-schulze', git: 'https://github.com/coorasse/schulze-vote', ref: '0f47cbb'

gem 'rails_autolink'

gem 'nickname_generator'

gem 'el_finder'

gem 'recaptcha', require: 'recaptcha/rails'

gem 'globalize'

gem 'sanitize'

gem 'wicked_pdf'

gem 'httparty'

gem 'icalendar'

gem 'private_pub'

gem 'rotp'

gem 'ckeditor'

gem 'timezone', git: 'https://github.com/coorasse/timezone'

gem 'friendly_id'
gem 'simple_form'
gem 'gemoji'
gem 'workflow'
gem 'select2-rails'
gem 'redcarpet'
gem 'kaminari'

gem 'mailman', require: false

gem 'email_reply_parser'

gem 'paper_trail'

gem 'figaro'

gem 'faker'

gem 'sshkit'

gem 'cookies_eu', git: 'https://github.com/coorasse/cookies_eu'

gem 'font-awesome-rails'

gem 'truncate_html'

gem 'activerecord-session_store'

gem 'puma'

gem 'pg_search', '1.0.6'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'i18n-tasks'
  gem 'rubocop'
  gem 'bullet'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'awesome_print'
  gem 'letter_opener'
  gem 'foreman'
  gem 'rack-mini-profiler', require: false
  gem 'spring'
  gem 'thin', require: false # required for private_pub
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'capybara-selenium'
  gem 'capybara-screenshot'
  gem 'timecop'
end

group :development, :test do
  gem 'test-unit'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'ruby-prof'
  gem 'simplecov', require: false
  gem 'email_spec'
end

group :development do
  gem 'crowdin-api'
  gem 'rubyzip'
end

group :production do
  gem 'newrelic_rpm'
  gem 'sentry-raven', git: 'https://github.com/getsentry/raven-ruby'
  gem 'lograge'
  gem 'rails_12factor'
end

group :doc do
  gem 'sdoc', require: false
end
