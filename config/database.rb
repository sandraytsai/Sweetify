configure :development do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end

configure :development, :test do

end

configure :production do

end

configure do
  # Load all models from app/models, using autoload instead of require
  # See http://www.rubyinside.com/ruby-techniques-revealed-autoload-1652.html
  Dir[APP_ROOT.join('app', 'models', '*.rb')].each do |model_file|
    filename = File.basename(model_file).gsub('.rb', '')
    autoload ActiveSupport::Inflector.camelize(filename), model_file
  end

    if development?
    set :database, {
      adapter: "sqlite3",
      database: "db/db.sqlite3"
    }
  else {
    set :database, ENV['DATABASE_URL']
  }
  end

  
end
