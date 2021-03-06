namespace :ac do
  namespace :db do
    task :load_postal_codes => :environment do
      local_settings = YAML::load_file("config/database.yml")[RAILS_ENV]
      postal_codes = File.join(Rails.root, 'db', 'sql', 'postal_codes.sql')
      system "mysql -u#{local_settings["username"]} #{"-p#{local_settings["password"]}" if local_settings["password"]} #{local_settings["database"]} < #{postal_codes}"
    end
  end
end
