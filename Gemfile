source 'https://rubygems.org'

gem 'rails', github: "rails/rails"
gem 'devise', git: "https://github.com/plataformatec/devise.git"
gem 'pg', '0.18.4'
gem 'puma', '~> 3.0'
gem 'rack-cors', '0.4.0'
gem 'tiddle', git: 'https://github.com/adamniedzielski/tiddle.git'
gem 'pundit', '1.1.0'
gem 'active_model_serializers', '0.10.0.rc5'
gem "paperclip", "~> 5.0.0.beta2"
gem "figaro", '1.1.1'
gem 'simple_enum', '2.3.0'

group :development, :test do
  gem 'capistrano-rails'
  gem "letter_opener"
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
