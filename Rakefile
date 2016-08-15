require "sinatra/activerecord/rake"
require 'json'

namespace :db do
  task :load_config do
    require ::File.expand_path('../config/environment', __FILE__)
    require ::File.expand_path('../lib/restaurants_importer', __FILE__)
  end

  desc 'Retrieves the current schema version number'
  task :version do
    puts "Current version: #{ActiveRecord::Migrator.current_version}"
  end
end

# desc 'populate the test database with data'
# task 'db:populate' do
#   AppConfig.establish_connection
#   RestaurantsImporter.import
# end


