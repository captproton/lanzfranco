source 'https://rubygems.org'

# Load test and dev env vars
gem 'dotenv-rails', :groups => [:development, :test]

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# page layout
gem 'less-rails'
gem 'therubyracer'
gem 'railsstrap', '~> 3.3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'growl'
  gem 'kramdown' #markdown gem
  gem 'better_errors', '~> 2.0.0'
  gem 'spring'
  # gem 'minitest'
  gem "minitest-rails"
  gem 'passenger'
  
  #guard is going through growing pains
  if Time.now > Time.new(2014,11,10)
    gem 'guard', '~> 2.8'
  else
    # Freeze until 2014-11-10 - in case we forget to change back ;)
    gem 'guard', '= 2.7.3'
  end
  
  gem 'guard-minitest'
  gem 'guard-passenger'
  gem "guard-bundler", "~> 2.0.0"
  gem 'rr', '~> 1.1.2'
  gem 'activerecord-nulldb-adapter'
  gem 'database_cleaner', '~> 1.3.0'
  gem 'pry'
  gem 'pry-debugger', :platforms => [:mri_19, :mri_20]
  gem 'pry-byebug', :platforms => [:mri_21]
  # conditional doesn't work with heroku
  # gem 'rb-fsevent', '~> 0.9.4', :require => false if RUBY_PLATFORM =~ /darwin/i 
  
  # Test coverage
  gem 'coveralls'
  gem 'rubocop', '>= 0.25', :platforms => [:ruby_19, :ruby_20, :ruby_21]
  gem 'simplecov', '>= 0.9'
end

gem 'pry-rails', '~> 0.3.2', :group => :development

group :production do
  # Use unicorn as the app server
  # gem 'unicorn'
  gem 'rails_12factor'
end


# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

