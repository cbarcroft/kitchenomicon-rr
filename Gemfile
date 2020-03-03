source 'https://rubygems.org'
ruby "2.5.7"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby
gem 'execjs', '~> 2.7.0'

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.2.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise', '~> 4.2.0'
gem 'simple_form', '~> 3.3.1'
gem 'cocoon', '~> 1.2.9'
gem 'twitter-bootstrap-rails', '~> 3.2.2'
gem 'gon', '~> 6.1.0'
gem 'paperclip', '~> 4.3'
gem 'aws-sdk', '< 2.0'

group :production do
  gem 'pg', '~> 0.18.4'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Open emails in default browser instead of sending (development only)
  gem 'letter_opener'
  # Silences the hurricane of asset-loading lines in the server output
  gem 'quiet_assets'

  # Improved error messages and debugging tools
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'sqlite3'
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
  #gem 'therubyracer', platforms: :ruby
end

